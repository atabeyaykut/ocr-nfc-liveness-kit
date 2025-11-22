.class public abstract Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchResultListItemModel;
.super Lhe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhe/a<",
        "Ltr/gov/turkiye/edevlet/kapisi/search/databinding/ItemSearchResultBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\'\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0014J\u000c\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR.\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u000e8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchResultListItemModel;",
        "Lhe/a;",
        "Ltr/gov/turkiye/edevlet/kapisi/search/databinding/ItemSearchResultBinding;",
        "",
        "getDefaultLayout",
        "Ll9/m;",
        "bind",
        "Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;",
        "service",
        "Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;",
        "getService",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;",
        "setService",
        "(Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;)V",
        "Lkotlin/Function1;",
        "listener",
        "Lx9/l;",
        "getListener",
        "()Lx9/l;",
        "setListener",
        "(Lx9/l;)V",
        "<init>",
        "()V",
        "ui-search_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public listener:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;",
            "Ll9/m;",
            ">;"
        }
    .end annotation
.end field

.field public service:Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lhe/a;-><init>()V

    return-void
.end method

.method public static synthetic a(Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchResultListItemModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchResultListItemModel;->bind$lambda$0(Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchResultListItemModel;Landroid/view/View;)V

    return-void
.end method

.method private static final bind$lambda$0(Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchResultListItemModel;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchResultListItemModel;->getListener()Lx9/l;

    move-result-object p1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchResultListItemModel;->getService()Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;

    move-result-object p0

    invoke-interface {p1, p0}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/viewbinding/ViewBinding;)V
    .locals 0

    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/ItemSearchResultBinding;

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchResultListItemModel;->bind(Ltr/gov/turkiye/edevlet/kapisi/search/databinding/ItemSearchResultBinding;)V

    return-void
.end method

.method public bind(Ltr/gov/turkiye/edevlet/kapisi/search/databinding/ItemSearchResultBinding;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchResultListItemModel;->getService()Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->getServiceName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/ItemSearchResultBinding;->e:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchResultListItemModel;->getService()Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->getInstitutionName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/ItemSearchResultBinding;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lzd/a;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Lzd/a;-><init>(ILjava/lang/Object;)V

    iget-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/ItemSearchResultBinding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "imgServiceInstitutionLogo"

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/ItemSearchResultBinding;->b:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchResultListItemModel;->getService()Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lge/b;->c(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method public getDefaultLayout()I
    .locals 1

    const v0, 0x7f0d00ae

    return v0
.end method

.method public final getListener()Lx9/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx9/l<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchResultListItemModel;->listener:Lx9/l;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "listener"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getService()Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchResultListItemModel;->service:Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "service"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final setListener(Lx9/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/l<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;",
            "Ll9/m;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchResultListItemModel;->listener:Lx9/l;

    return-void
.end method

.method public final setService(Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchResultListItemModel;->service:Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;

    return-void
.end method
