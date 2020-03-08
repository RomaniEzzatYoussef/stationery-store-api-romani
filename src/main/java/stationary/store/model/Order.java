package stationary.store.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "orders")
@JsonIgnoreProperties(ignoreUnknown = true)
@JsonInclude(JsonInclude.Include.NON_EMPTY)
public class Order implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @ManyToOne(cascade = {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH})
    @JoinColumn(name = "order_status_id")
    @JsonIgnoreProperties("orders")
    private OrderStatus orderStatus;

    @Column(name = "submit_date")
    private String sumbitDate;

    @Column(name = "estimated_days")
    private int estDelieveryDays;

    @Column(name = "delivery_date")
    private String delieveryDate;

    @Column(name = "last_status_update_date")
    private String lastUpdateDate;

    @OneToMany(mappedBy = "order", cascade = CascadeType.ALL)
    @JsonIgnoreProperties("order")
    @Fetch(FetchMode.JOIN)
    private List<OrderItem> orderItems;

    @ManyToOne(cascade = {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH})
    @JoinColumn(name = "shipper_id")
    @JsonIgnoreProperties("orders")
    private Shipper shipper;


    public Order() {
        SimpleDateFormat formatter = new SimpleDateFormat("YYYY-MM-dd");
        sumbitDate = formatter.format(new Date());
        delieveryDate = formatter.format(new Date());
        lastUpdateDate = formatter.format(new Date());
        estDelieveryDays = 10;
    }

    public int getEstDelieveryDays() {
        return estDelieveryDays;
    }

    public void setEstDelieveryDays(int estDelieveryDays) {
        this.estDelieveryDays = estDelieveryDays;
    }


    public OrderStatus getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(OrderStatus orderStatus) {
        this.orderStatus = orderStatus;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public List<OrderItem> getOrderItems() {
        return orderItems;
    }

    public void setOrderItems(List<OrderItem> orderItems) {
        this.orderItems = orderItems;
    }

    public String getSumbitDate() {
        return sumbitDate;
    }

    public void setSumbitDate(String sumbitDate) {
        this.sumbitDate = sumbitDate;
    }

    public String getDelieveryDate() {
        return delieveryDate;
    }

    public void setDelieveryDate(String delieveryDate) {
        this.delieveryDate = delieveryDate;
    }

    public String getLastUpdateDate() {
        return lastUpdateDate;
    }

    public void setLastUpdateDate(String lastUpdateDate) {
        this.lastUpdateDate = lastUpdateDate;
    }

    public Shipper getShipper() {
        return shipper;
    }

    public void setShipper(Shipper shipper) {
        this.shipper = shipper;
    }
}
