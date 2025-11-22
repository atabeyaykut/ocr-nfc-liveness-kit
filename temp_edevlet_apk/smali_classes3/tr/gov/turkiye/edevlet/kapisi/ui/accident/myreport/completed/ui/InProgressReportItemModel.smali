.class public abstract Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemModel;
.super Lhe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhe/a<",
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemInProgressReportBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\'\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0014J\u000c\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR.\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u000e8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemModel;",
        "Lhe/a;",
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemInProgressReportBinding;",
        "",
        "getDefaultLayout",
        "Ll9/m;",
        "bind",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;",
        "reportItem",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;",
        "getReportItem",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;",
        "setReportItem",
        "(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;)V",
        "Lkotlin/Function1;",
        "selectReport",
        "Lx9/l;",
        "getSelectReport",
        "()Lx9/l;",
        "setSelectReport",
        "(Lx9/l;)V",
        "<init>",
        "()V",
        "ui-mobile-accident_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public reportItem:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;

.field public selectReport:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;",
            "Ll9/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lhe/a;-><init>()V

    return-void
.end method

.method public static synthetic a(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemModel;->bind$lambda$0(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemModel;Landroid/view/View;)V

    return-void
.end method

.method private static final bind$lambda$0(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemModel;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemModel;->getSelectReport()Lx9/l;

    move-result-object p1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemModel;->getReportItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;

    move-result-object p0

    invoke-interface {p1, p0}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/viewbinding/ViewBinding;)V
    .locals 0

    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemInProgressReportBinding;

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemModel;->bind(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemInProgressReportBinding;)V

    return-void
.end method

.method public bind(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemInProgressReportBinding;)V
    .locals 6

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemModel;->getReportItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;->getAccidentDate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lge/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemInProgressReportBinding;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemModel;->getReportItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;->getVehiclePlateCityCode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v3, "-"

    iget-object v4, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemInProgressReportBinding;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemModel;->getReportItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;->getVehiclePlateCityCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lmc/o;->k0(Ljava/lang/CharSequence;)C

    move-result v0

    const/16 v5, 0x30

    if-ne v0, v5, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemModel;->getReportItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;->getVehiclePlateNumber()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemModel;->getReportItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;->getVehiclePlateNumber()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemModel;->getReportItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;->getVehiclePlateNumber()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lge/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    new-instance v0, Lzd/a;

    const/16 v4, 0x10

    invoke-direct {v0, v4, p0}, Lzd/a;-><init>(ILjava/lang/Object;)V

    iget-object v4, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemInProgressReportBinding;->b:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemModel;->getReportItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;

    move-result-object v4

    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;->getAccidentCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " / "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemModel;->getReportItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;

    move-result-object v4

    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;->getAccidentDistrict()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemInProgressReportBinding;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lyd/a;->a:Lyd/a$a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "status "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemModel;->getReportItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;

    move-result-object v5

    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;->getConsolidatedStatus()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v2}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemModel;->getReportItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;->getConsolidatedStatus()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "INITIATED"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v3, "Bilgi Giri\u015fine Ba\u015fland\u0131"

    goto/16 :goto_6

    :cond_5
    const-string v2, "PARTY_COMPLETED"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v3, "Bilgi Giri\u015fi Tamamland\u0131"

    goto/16 :goto_6

    :cond_6
    const-string v2, "MERGED"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v3, "QR Tarama/Tutanak E\u015fle\u015ftirme"

    goto/16 :goto_6

    :cond_7
    const-string v2, "WAITING_CONFIRM_REQUEST"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v3, "QR E\u015fle\u015ftirme/Tutanak E\u015fle\u015ftirme"

    goto/16 :goto_6

    :cond_8
    const-string v2, "SCENARIO"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    const-string v1, "DRAFT_INITIATED"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_5
    if-eqz v1, :cond_a

    const-string v3, "Senaryo \u00c7izimi"

    goto :goto_6

    :cond_a
    const-string v1, "RECEIVED_CONFIRM_REQUEST"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v3, "Senaryo \u00c7iziminin Onay\u0131ma Gelmesi Bekleniyor"

    goto :goto_6

    :cond_b
    const-string v1, "WAITING_CONFIRM_RESPONSE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v3, "Onay Bekleniyor"

    goto :goto_6

    :cond_c
    const-string v1, "HOST_APPROVED"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v3, "Onayland\u0131"

    goto :goto_6

    :cond_d
    const-string v1, "HOST_REJECTED"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v3, "Reddedildi"

    goto :goto_6

    :cond_e
    const-string v1, "GUEST_APPROVED"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v3, "Onaylad\u0131m"

    goto :goto_6

    :cond_f
    const-string v1, "GUEST_REJECTED"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v3, "Reddettim"

    goto :goto_6

    :cond_10
    const-string v1, "EXPIRED"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v3, "S\u00fcresi Ge\u00e7mi\u015f"

    goto :goto_6

    :cond_11
    const-string v1, "COMPLETE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v3, "Tamamland\u0131"

    :cond_12
    :goto_6
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemInProgressReportBinding;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getDefaultLayout()I
    .locals 1

    const v0, 0x7f0d009b

    return v0
.end method

.method public final getReportItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemModel;->reportItem:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "reportItem"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getSelectReport()Lx9/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx9/l<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemModel;->selectReport:Lx9/l;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "selectReport"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final setReportItem(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemModel;->reportItem:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;

    return-void
.end method

.method public final setSelectReport(Lx9/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/l<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;",
            "Ll9/m;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemModel;->selectReport:Lx9/l;

    return-void
.end method
