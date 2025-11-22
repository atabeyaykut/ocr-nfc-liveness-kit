.class public final Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment$a;
.super Lcom/google/android/material/snackbar/Snackbar$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->l(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;

    invoke-direct {p0}, Lcom/google/android/material/snackbar/Snackbar$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V
    .locals 5

    .line 1
    const/4 p1, 0x2

    .line 2
    if-ne p2, p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;

    .line 5
    .line 6
    iget-object p2, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getServiceCode()Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    iget-object v0, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->b:Ll9/e;

    .line 21
    .line 22
    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lrf/g;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance v1, Lrf/j;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct {v1, v0, p2, v2}, Lrf/j;-><init>(Lrf/g;ILp9/d;)V

    .line 35
    .line 36
    .line 37
    iget-object p2, v0, Lr0/z;->c:Lnc/a0;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v4, 0x3

    .line 41
    invoke-static {p2, v2, v3, v1, v4}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 42
    .line 43
    .line 44
    new-instance v1, Lrf/k;

    .line 45
    .line 46
    invoke-direct {v1, v0, v2}, Lrf/k;-><init>(Lrf/g;Lp9/d;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, v0, Lrf/g;->i:Lrf/n;

    .line 50
    .line 51
    invoke-static {p2, v0, v1}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 52
    .line 53
    .line 54
    iput-object v2, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 55
    .line 56
    :cond_0
    return-void
.end method

.method public final bridge synthetic onDismissed(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment$a;->onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V

    return-void
.end method
