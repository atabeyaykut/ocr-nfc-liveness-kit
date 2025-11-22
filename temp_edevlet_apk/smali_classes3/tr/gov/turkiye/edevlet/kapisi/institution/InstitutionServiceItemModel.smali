.class public abstract Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;
.super Lhe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhe/a<",
        "Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/ItemInstitutionDetailServiceBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\'\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\"\u0010#J\u0008\u0010\u0004\u001a\u00020\u0003H\u0014J\u000c\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R.\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u00158\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR.\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u00158\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u0017\u001a\u0004\u0008\u001d\u0010\u0019\"\u0004\u0008\u001e\u0010\u001bR.\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u00158\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010\u0017\u001a\u0004\u0008 \u0010\u0019\"\u0004\u0008!\u0010\u001b\u00a8\u0006$"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;",
        "Lhe/a;",
        "Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/ItemInstitutionDetailServiceBinding;",
        "",
        "getDefaultLayout",
        "Ll9/m;",
        "bind",
        "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
        "service",
        "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
        "getService",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
        "setService",
        "(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;)V",
        "",
        "progressView",
        "Z",
        "getProgressView",
        "()Z",
        "setProgressView",
        "(Z)V",
        "Lkotlin/Function1;",
        "unFavoriteListener",
        "Lx9/l;",
        "getUnFavoriteListener",
        "()Lx9/l;",
        "setUnFavoriteListener",
        "(Lx9/l;)V",
        "favoriteListener",
        "getFavoriteListener",
        "setFavoriteListener",
        "listener",
        "getListener",
        "setListener",
        "<init>",
        "()V",
        "ui-institution-detail_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public favoriteListener:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            "Ll9/m;",
            ">;"
        }
    .end annotation
.end field

.field public listener:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            "Ll9/m;",
            ">;"
        }
    .end annotation
.end field

.field private progressView:Z

.field public service:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

.field public unFavoriteListener:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
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

.method public static synthetic a(Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;->bind$lambda$1(Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;->bind$lambda$0(Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;Landroid/view/View;)V

    return-void
.end method

.method private static final bind$lambda$0(Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;->getListener()Lx9/l;

    move-result-object p1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;->getService()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    move-result-object p0

    invoke-interface {p1, p0}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final bind$lambda$1(Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;->getFavoriteListener()Lx9/l;

    move-result-object p1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;->getService()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    move-result-object p0

    invoke-interface {p1, p0}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final bind$lambda$2(Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;->getUnFavoriteListener()Lx9/l;

    move-result-object p1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;->getService()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    move-result-object p0

    invoke-interface {p1, p0}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic c(Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;->bind$lambda$2(Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/viewbinding/ViewBinding;)V
    .locals 0

    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/ItemInstitutionDetailServiceBinding;

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;->bind(Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/ItemInstitutionDetailServiceBinding;)V

    return-void
.end method

.method public bind(Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/ItemInstitutionDetailServiceBinding;)V
    .locals 6

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;->getService()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getServiceName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/ItemInstitutionDetailServiceBinding;->f:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;->getService()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->isFavoriteProgress()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/ItemInstitutionDetailServiceBinding;->c:Landroid/widget/ProgressBar;

    iget-object v4, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/ItemInstitutionDetailServiceBinding;->d:Landroid/widget/ImageView;

    iget-object v5, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/ItemInstitutionDetailServiceBinding;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;->getService()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->isFavorite()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    new-instance v0, Lzd/a;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lzd/a;-><init>(ILjava/lang/Object;)V

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/ItemInstitutionDetailServiceBinding;->b:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lzd/d;

    const/16 v0, 0x9

    invoke-direct {p1, v0, p0}, Lzd/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lie/d;

    const/4 v0, 0x6

    invoke-direct {p1, v0, p0}, Lie/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getDefaultLayout()I
    .locals 1

    const v0, 0x7f0d009c

    return v0
.end method

.method public final getFavoriteListener()Lx9/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx9/l<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;->favoriteListener:Lx9/l;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "favoriteListener"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getListener()Lx9/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx9/l<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;->listener:Lx9/l;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "listener"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getProgressView()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;->progressView:Z

    return v0
.end method

.method public final getService()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;->service:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "service"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getUnFavoriteListener()Lx9/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx9/l<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;->unFavoriteListener:Lx9/l;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "unFavoriteListener"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final setFavoriteListener(Lx9/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/l<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            "Ll9/m;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;->favoriteListener:Lx9/l;

    return-void
.end method

.method public final setListener(Lx9/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/l<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            "Ll9/m;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;->listener:Lx9/l;

    return-void
.end method

.method public final setProgressView(Z)V
    .locals 0

    iput-boolean p1, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;->progressView:Z

    return-void
.end method

.method public final setService(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;->service:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    return-void
.end method

.method public final setUnFavoriteListener(Lx9/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/l<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            "Ll9/m;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;->unFavoriteListener:Lx9/l;

    return-void
.end method
