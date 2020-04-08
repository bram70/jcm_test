class AddCategoriesAndKeywords < ActiveRecord::Migration[6.0]
  def up 
    f = Category.create(name: "Farmacos");
    k1 = Keyword.create(phrase: "pastillas", category: f);
    k1 = Keyword.create(phrase: "ampollas", category: f);
    k1 = Keyword.create(phrase: "jarabe", category: f);
  end
  def down
  end
end
