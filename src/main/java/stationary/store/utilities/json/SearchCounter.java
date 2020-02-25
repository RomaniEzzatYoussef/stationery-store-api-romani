package stationary.store.utilities.json;

public class SearchCounter {
    private long categoryCount;
    private long productCount;

    public SearchCounter(long categoryCount, long productCount) {
        this.categoryCount = categoryCount;
        this.productCount = productCount;
    }

    public long getCategoryCount() {
        return categoryCount;
    }

    public void setCategoryCount(long categoryCount) {
        this.categoryCount = categoryCount;
    }

    public long getProductCount() {
        return productCount;
    }

    public void setProductCount(long productCount) {
        this.productCount = productCount;
    }
}
