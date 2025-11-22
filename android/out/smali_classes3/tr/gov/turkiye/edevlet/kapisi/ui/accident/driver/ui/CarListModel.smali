.class public abstract Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;
.super Lhe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhe/a<",
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemCarBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\'\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0008\u0010\u0004\u001a\u00020\u0003H\u0014J\u000c\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R.\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u00158\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR.\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u00158\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u0017\u001a\u0004\u0008\u001d\u0010\u0019\"\u0004\u0008\u001e\u0010\u001b\u00a8\u0006!"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;",
        "Lhe/a;",
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemCarBinding;",
        "",
        "getDefaultLayout",
        "Ll9/m;",
        "bind",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;",
        "carItem",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;",
        "getCarItem",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;",
        "setCarItem",
        "(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;)V",
        "",
        "selectedCarPlateNumber",
        "Ljava/lang/String;",
        "getSelectedCarPlateNumber",
        "()Ljava/lang/String;",
        "setSelectedCarPlateNumber",
        "(Ljava/lang/String;)V",
        "Lkotlin/Function1;",
        "selectCar",
        "Lx9/l;",
        "getSelectCar",
        "()Lx9/l;",
        "setSelectCar",
        "(Lx9/l;)V",
        "unselectCar",
        "getUnselectCar",
        "setUnselectCar",
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
.field public carItem:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;

.field public selectCar:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;",
            "Ll9/m;",
            ">;"
        }
    .end annotation
.end field

.field public selectedCarPlateNumber:Ljava/lang/String;

.field public unselectCar:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;",
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

.method public static synthetic a(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemCarBinding;Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;->bind$lambda$0(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemCarBinding;Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;->bind$lambda$1(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private static final bind$lambda$0(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemCarBinding;Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;Landroid/view/View;)V
    .locals 0

    const-string p2, "$this_bind"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemCarBinding;->c:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;->getUnselectCar()Lx9/l;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;->getSelectCar()Lx9/l;

    move-result-object p0

    :goto_0
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;->getCarItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final bind$lambda$1(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;->getSelectCar()Lx9/l;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;->getUnselectCar()Lx9/l;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;->getCarItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/viewbinding/ViewBinding;)V
    .locals 0

    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemCarBinding;

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;->bind(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemCarBinding;)V

    return-void
.end method

.method public bind(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemCarBinding;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;->getCarItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;->getPlateNumber()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemCarBinding;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;->getCarItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;->isSelected()Z

    move-result v0

    iget-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemCarBinding;->c:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance v0, Leh/a;

    invoke-direct {v0, p1, p0}, Leh/a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemCarBinding;Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;)V

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemCarBinding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Leh/b;

    invoke-direct {p1, p0}, Leh/b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;)V

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final getCarItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;->carItem:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "carItem"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getDefaultLayout()I
    .locals 1

    const v0, 0x7f0d0089

    return v0
.end method

.method public final getSelectCar()Lx9/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx9/l<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;->selectCar:Lx9/l;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "selectCar"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getSelectedCarPlateNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;->selectedCarPlateNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "selectedCarPlateNumber"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getUnselectCar()Lx9/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx9/l<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;->unselectCar:Lx9/l;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "unselectCar"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final setCarItem(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;->carItem:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;

    return-void
.end method

.method public final setSelectCar(Lx9/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/l<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;",
            "Ll9/m;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;->selectCar:Lx9/l;

    return-void
.end method

.method public final setSelectedCarPlateNumber(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;->selectedCarPlateNumber:Ljava/lang/String;

    return-void
.end method

.method public final setUnselectCar(Lx9/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/l<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;",
            "Ll9/m;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;->unselectCar:Lx9/l;

    return-void
.end method
