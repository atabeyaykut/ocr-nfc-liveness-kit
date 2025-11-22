.class public final Lke/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lke/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Landroid/view/ViewGroup;ILandroid/view/View;II)Lke/d;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/d0;->n(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v1, 0x7f0d0037

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type tr.gov.turkiye.edevlet.kapisi.common.ui.view.CustomSnackbarView"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->getTvMsg()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->getImLeft()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->getLayRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p1, Lke/d;

    invoke-direct {p1, v0, p0, p2}, Lke/d;-><init>(Landroid/view/ViewGroup;Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;Landroid/view/View;)V

    invoke-virtual {p1, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->setDuration(I)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    move-result-object p0

    check-cast p0, Lke/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No suitable parent found from the given view. Please provide a valid view."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Landroid/view/ViewGroup;Ljava/lang/String;I)Lke/d;
    .locals 4

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/d0;->n(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v2, 0x7f0d0037

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string v2, "null cannot be cast to non-null type tr.gov.turkiye.edevlet.kapisi.common.ui.view.CustomSnackbarView"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->getTvMsg()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->getImLeft()Landroid/widget/ImageView;

    move-result-object p1

    const v2, 0x7f08013e

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->getLayRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p1, Lke/d;

    invoke-direct {p1, v0, p0, v1}, Lke/d;-><init>(Landroid/view/ViewGroup;Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;Landroid/view/View;)V

    invoke-virtual {p1, v3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->setDuration(I)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    move-result-object p0

    check-cast p0, Lke/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No suitable parent found from the given view. Please provide a valid view."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Landroidx/constraintlayout/widget/ConstraintLayout;II)Lke/d;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/d0;->n(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v2, 0x7f0d0037

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string v2, "null cannot be cast to non-null type tr.gov.turkiye.edevlet.kapisi.common.ui.view.CustomSnackbarView"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->getTvMsg()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->getImLeft()Landroid/widget/ImageView;

    move-result-object p1

    const v2, 0x7f08013e

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->getLayRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p1, Lke/d;

    invoke-direct {p1, v0, p0, v1}, Lke/d;-><init>(Landroid/view/ViewGroup;Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;Landroid/view/View;)V

    invoke-virtual {p1, v3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->setDuration(I)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    move-result-object p0

    check-cast p0, Lke/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No suitable parent found from the given view. Please provide a valid view."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Landroidx/constraintlayout/widget/ConstraintLayout;IIII)Lke/d;
    .locals 5

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/d0;->n(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0037

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type tr.gov.turkiye.edevlet.kapisi.common.ui.view.CustomSnackbarView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;

    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->getTvMsg()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->getTvMsg()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->getImLeft()Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->getLayRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p0, Lke/d;

    invoke-direct {p0, v0, v2, v1}, Lke/d;-><init>(Landroid/view/ViewGroup;Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;Landroid/view/View;)V

    invoke-virtual {p0, v4}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->setDuration(I)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    move-result-object p0

    check-cast p0, Lke/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No suitable parent found from the given view. Please provide a valid view."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Landroid/view/ViewGroup;ILandroid/view/View;II)Lke/d;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/d0;->n(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v1, 0x7f0d0037

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type tr.gov.turkiye.edevlet.kapisi.common.ui.view.CustomSnackbarView"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->getTvMsg()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->getTvMsg()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->getImLeft()Landroid/widget/ImageView;

    move-result-object p1

    const p3, 0x7f080141

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->getLayRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p1, Lke/d;

    invoke-direct {p1, v0, p0, p2}, Lke/d;-><init>(Landroid/view/ViewGroup;Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;Landroid/view/View;)V

    invoke-virtual {p1, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->setDuration(I)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    move-result-object p0

    check-cast p0, Lke/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No suitable parent found from the given view. Please provide a valid view."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
