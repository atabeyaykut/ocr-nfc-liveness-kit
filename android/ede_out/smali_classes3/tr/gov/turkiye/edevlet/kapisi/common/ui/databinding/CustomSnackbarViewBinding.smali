.class public final Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/CustomSnackbarViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;)V
    .locals 0
    .param p1    # Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/CustomSnackbarViewBinding;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/CustomSnackbarViewBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/CustomSnackbarViewBinding;

    check-cast p0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/CustomSnackbarViewBinding;-><init>(Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "rootView"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/CustomSnackbarViewBinding;
    .locals 3
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0d0037

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/CustomSnackbarViewBinding;->bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/CustomSnackbarViewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/CustomSnackbarViewBinding;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;

    return-object v0
.end method
