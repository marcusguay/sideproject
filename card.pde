public class card {
  private String name;
  private ArrayList<Text> list;


  public card() {
    list=new ArrayList<Text>();
  }


  public void add(Text t) {
    this.list.add(t);
  }

  public void show() {
    for (int i=0; i < list.size(); i++) {
      list.get(i).show();
    }
  }
}
