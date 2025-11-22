.class public final Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lfg/e;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lfg/e;

    .line 2
    .line 3
    const-string v0, "state"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p1, Lfg/e;->c:Lr0/b;

    .line 9
    .line 10
    instance-of v1, v0, Lr0/d1;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    instance-of v1, v0, Lr0/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    :goto_0
    iget-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    :try_start_1
    invoke-static {v2}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->G(Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    instance-of v1, v0, Lr0/c1;

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    iget-object p1, p1, Lfg/e;->e:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;

    .line 31
    .line 32
    invoke-static {v2, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->F(Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    instance-of p1, v0, Lr0/i;

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    check-cast v0, Lr0/i;

    .line 41
    .line 42
    iget-object p1, v0, Lr0/i;->b:Ljava/lang/Throwable;

    .line 43
    .line 44
    invoke-static {v2, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;->E(Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_1
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 53
    .line 54
    return-object p1
.end method
