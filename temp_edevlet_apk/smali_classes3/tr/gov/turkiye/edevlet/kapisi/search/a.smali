.class public final Ltr/gov/turkiye/edevlet/kapisi/search/a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/search/a;->a:Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 2
    .line 3
    const-string v0, "service"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->s:[Lda/m;

    .line 9
    .line 10
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/a;->a:Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->isFavorite()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {p1, v1}, Loe/a;->c(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Z)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 29
    .line 30
    return-object p1
.end method
