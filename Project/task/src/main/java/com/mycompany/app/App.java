package com.mycompany.app;

import org.json.JSONObject;
import org.supercsv.cellprocessor.ift.CellProcessor;
import org.supercsv.comment.CommentStartsWith;
import org.supercsv.io.CsvBeanReader;
import org.supercsv.io.ICsvBeanReader;
import org.supercsv.prefs.CsvPreference;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.*;
import java.util.*;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.Map;
public class App {


    public static void main(String[] args) throws IOException {

        //Распаковка архива в папку
        try (ZipInputStream zin = new ZipInputStream(new FileInputStream("C:\\Users\\BornToNight\\Desktop\\Project\\source_archive.zip"))) { //Путь до архива с данными
            ZipEntry entry;
            String name;
            while ((entry = zin.getNextEntry()) != null) {

                name = entry.getName();
                FileOutputStream fout = new FileOutputStream("C:\\Users\\BornToNight\\Desktop\\Project\\source\\" + name); //директория куда распакуется архив
                for (int c = zin.read(); c != -1; c = zin.read()) {
                    fout.write(c);
                }
                fout.flush();
                zin.closeEntry();
                fout.close();
            }
        } catch (Exception ex) {

            System.out.println(ex.getMessage());
        }

        final CsvPreference STANDARD_SKIP_COMMENTS = new CsvPreference.Builder(CsvPreference.STANDARD_PREFERENCE).skipComments(new CommentStartsWith("#")).build(); //Пропускать строки начинающиеся на # (комментарии)
        CellProcessor[] procs = getProcessors();

        List<Employee> employeeList = new ArrayList<>();
        String[] mapping = new String[]{"id", "count"};
        Map<String, Integer> map = new HashMap<>(); //Карта для первого JSON
        ObjectMapper mapper = new ObjectMapper();

        Map<String, Integer> map2 = new HashMap<>(); //Карта для второго JSON
        //заполненеи подготовленного списка
        map2.put("mark01", null);
        map2.put("mark17", null);
        map2.put("mark23", null);
        map2.put("mark35", null);
        map2.put("markfv", null);
        map2.put("markfx", null);
        map2.put("markft", null);
        Employee employee;
        JSONObject jsonObject = new JSONObject();
        String[][] array = new String[100][100];

        File dir = new File("C:\\Users\\BornToNight\\Desktop\\Project\\source"); //директория где хранятся файлы с данными
        if (dir.isDirectory()) {
            // получаем все вложенные объекты в каталоге
            for (File item : dir.listFiles()) {

                if (!(item.isDirectory())) {
                    ICsvBeanReader csvBeanReader = new CsvBeanReader(new FileReader("C:\\Users\\BornToNight\\Desktop\\Project\\source\\" + item.getName()), STANDARD_SKIP_COMMENTS); //Считываем данные с CSV файла
                    while ((employee = csvBeanReader.read(Employee.class, mapping)) != null) {
                        System.out.println("id = " +employee.getId()+ ", count = " + employee.getCount());
                        map.merge(employee.getId().toLowerCase(), Integer.parseInt(employee.getCount()), (oldValue, newValue) -> oldValue + newValue); //Добавление данных в первую карту
                        map2.merge(employee.getId().toLowerCase(), Integer.parseInt(employee.getCount()), (oldValue, newValue) -> oldValue + newValue);//Добавление данных в вторую карту
                        employeeList.add(employee);

                        //Цикл добавления данных в двумерный массив
                        for (int i = 0; i < array.length; i++){
                            //Если такой id уже имеется, записываются данные в этот массив
                            if (employee.getId().toLowerCase().equalsIgnoreCase(array[i][0])){
                                for (int j = 2; j < array.length; j++){
                                    if (array[i][j] == null){
                                        array[i][j] = employee.getCount();
                                        break;
                                    }
                                }break; //Выход из цикла, если данные добавлены
                            //Иначе добавляется новый массив с новым id
                            }else if(array[i][0] == null){
                                array[i][0] = employee.getId();
                                array[i][1] = employee.getCount();
                                break;
                            }
                        }
                    }
                    csvBeanReader.close();
                }
            }
        }

        //Запись файла 1
        try (FileWriter file = new FileWriter("C:\\Users\\BornToNight\\Desktop\\Project\\done1.json")) {
            String json = mapper.writeValueAsString(map);
            file.write(json);
            file.flush();
            System.out.println("Successfully Copied JSON Object to File done1.json");
        } catch (Exception ex) {

            System.out.println(ex.getMessage());
        }
        //Запись файла 2
        try (FileWriter file = new FileWriter("C:\\Users\\BornToNight\\Desktop\\Project\\done2.json")) {
            String json = mapper.writeValueAsString(map2);
            //System.out.println("check = " + json);
            //System.out.println(map2);
            file.write(json);
            file.flush();
            System.out.println("Successfully Copied JSON Object to File done2.json");
        } catch (Exception ex) {

            System.out.println(ex.getMessage());
        }
        //Запись файла 3
        try (FileWriter file = new FileWriter("C:\\Users\\BornToNight\\Desktop\\Project\\done3.json")) {
        //Сортировка данных по убыванию
        Integer size = 0;
            for (int i = 0; i < array.length && array[i][0]!=null; i++){
                for (int j=1; j < array.length && array[i][j]!=null; j++){
                    size = j;
                }
                for (int j=size; j > 1; j--){
                    for (int k =1; k < j; k++){
                        if( Integer.parseInt(array[i][k]) < Integer.parseInt(array[i][k+1]) ){
                            String tmp = array[i][k];
                            array[i][k] = array[i][k+1];
                            array[i][k+1] = tmp;
                        }
                    }
                }
            }
            //Добавление данных из массива в JSON Объект
            for (int i = 0; i < array.length && array[i][0]!=null; i++) {
                for (int j = 1; j < array.length && array[i][j] != null; j++) {
                    jsonObject.append(array[i][0].toLowerCase(), Integer.parseInt(array[i][j]));
                }
            }
            file.write(jsonObject.toString());
            file.flush();
            System.out.println("Successfully Copied JSON Object to File done3.json");

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }

     //Обработчик ячеек

    private static CellProcessor[] getProcessors() {
        return new CellProcessor[]{
        };
    }
}