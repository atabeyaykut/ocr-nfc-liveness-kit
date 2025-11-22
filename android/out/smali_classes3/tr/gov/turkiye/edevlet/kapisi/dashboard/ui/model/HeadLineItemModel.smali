.class public abstract Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/HeadLineItemModel;
.super Lhe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhe/a<",
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemAtamDashboardItemBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\'\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0014J\u000c\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR.\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u000e8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/HeadLineItemModel;",
        "Lhe/a;",
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemAtamDashboardItemBinding;",
        "",
        "getDefaultLayout",
        "Ll9/m;",
        "bind",
        "Llf/b;",
        "dashboardItem",
        "Llf/b;",
        "getDashboardItem",
        "()Llf/b;",
        "setDashboardItem",
        "(Llf/b;)V",
        "Lkotlin/Function1;",
        "listener",
        "Lx9/l;",
        "getListener",
        "()Lx9/l;",
        "setListener",
        "(Lx9/l;)V",
        "<init>",
        "()V",
        "ui-dashboard_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public dashboardItem:Llf/b;

.field public listener:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "-",
            "Llf/b;",
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

.method public static synthetic a(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/HeadLineItemModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/HeadLineItemModel;->bind$lambda$0(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/HeadLineItemModel;Landroid/view/View;)V

    return-void
.end method

.method private static final bind$lambda$0(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/HeadLineItemModel;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/HeadLineItemModel;->getListener()Lx9/l;

    move-result-object p1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/HeadLineItemModel;->getDashboardItem()Llf/b;

    move-result-object p0

    invoke-interface {p1, p0}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/viewbinding/ViewBinding;)V
    .locals 0

    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemAtamDashboardItemBinding;

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/HeadLineItemModel;->bind(Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemAtamDashboardItemBinding;)V

    return-void
.end method

.method public bind(Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemAtamDashboardItemBinding;)V
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/HeadLineItemModel;->getDashboardItem()Llf/b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget v0, v0, Llf/b;->b:I

    .line 11
    .line 12
    iget-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemAtamDashboardItemBinding;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/HeadLineItemModel;->getDashboardItem()Llf/b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v0, v0, Llf/b;->d:Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemAtamDashboardItemBinding;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 33
    .line 34
    .line 35
    const-string v0, "imgDashboardItemLogo"

    .line 36
    .line 37
    iget-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemAtamDashboardItemBinding;->c:Landroid/widget/ImageView;

    .line 38
    .line 39
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/HeadLineItemModel;->getDashboardItem()Llf/b;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget v0, v0, Llf/b;->c:I

    .line 47
    .line 48
    invoke-static {v1, v0}, Lge/b;->a(Landroid/widget/ImageView;I)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lxf/d;

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    invoke-direct {v0, v1, p0}, Lxf/d;-><init>(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemAtamDashboardItemBinding;->b:Lcom/google/android/material/card/MaterialCardView;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final getDashboardItem()Llf/b;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/HeadLineItemModel;->dashboardItem:Llf/b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "dashboardItem"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getDefaultLayout()I
    .locals 1

    const v0, 0x7f0d0088

    return v0
.end method

.method public final getListener()Lx9/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx9/l<",
            "Llf/b;",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/HeadLineItemModel;->listener:Lx9/l;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "listener"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final setDashboardItem(Llf/b;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/HeadLineItemModel;->dashboardItem:Llf/b;

    return-void
.end method

.method public final setListener(Lx9/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/l<",
            "-",
            "Llf/b;",
            "Ll9/m;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/HeadLineItemModel;->listener:Lx9/l;

    return-void
.end method
