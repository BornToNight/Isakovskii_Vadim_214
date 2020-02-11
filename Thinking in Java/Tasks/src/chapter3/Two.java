package chapter3;

//Демонтстрация как объекту присваивается ссылка на объект, а не его значение
public class Two {

    public int level =0;


    public void out(){
        Two two1 = new Two();
        two1.level=1;
        Two two2 = new Two();
        two2.level=2;
        System.out.println("1= " + two1.level + " 2= " +two2.level);

        two1.level = two2.level;
        System.out.println("1= " + two1.level + " 2= " +two2.level);
        two1.level = 3;
        System.out.println("1= " + two1.level + " 2= " +two2.level);

        two1 = two2;
        System.out.println("1= " + two1.level + " 2= " +two2.level);
        two1.level = 8;
        System.out.println("1= " + two1.level + " 2= " +two2.level);
    }
}
