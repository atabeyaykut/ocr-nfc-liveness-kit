.class public final Lcc/h$d;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcc/h;-><init>(Lbc/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lcc/h$a;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcc/h;


# direct methods
.method public constructor <init>(Lcc/h;)V
    .locals 0

    iput-object p1, p0, Lcc/h$d;->a:Lcc/h;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lcc/h$a;

    .line 2
    .line 3
    const-string v0, "supertypes"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcc/h$d;->a:Lcc/h;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcc/h;->g()Lma/u0;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Lcc/i;

    .line 15
    .line 16
    invoke-direct {v2, v0}, Lcc/i;-><init>(Lcc/h;)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Lcc/j;

    .line 20
    .line 21
    invoke-direct {v3, v0}, Lcc/j;-><init>(Lcc/h;)V

    .line 22
    .line 23
    .line 24
    iget-object v4, p1, Lcc/h$a;->a:Ljava/util/Collection;

    .line 25
    .line 26
    invoke-interface {v1, v0, v4, v2, v3}, Lma/u0;->a(Lcc/h;Ljava/util/Collection;Lcc/i;Lcc/j;)Ljava/util/Collection;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x0

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Lcc/h;->e()Lcc/e0;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    invoke-static {v1}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move-object v1, v3

    .line 49
    :goto_0
    if-nez v1, :cond_1

    .line 50
    .line 51
    sget-object v1, Lm9/v;->a:Lm9/v;

    .line 52
    .line 53
    :cond_1
    check-cast v1, Ljava/util/Collection;

    .line 54
    .line 55
    :cond_2
    instance-of v2, v1, Ljava/util/List;

    .line 56
    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    move-object v3, v1

    .line 60
    check-cast v3, Ljava/util/List;

    .line 61
    .line 62
    :cond_3
    if-nez v3, :cond_4

    .line 63
    .line 64
    check-cast v1, Ljava/lang/Iterable;

    .line 65
    .line 66
    invoke-static {v1}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    :cond_4
    invoke-virtual {v0, v3}, Lcc/h;->i(Ljava/util/List;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v1, "<set-?>"

    .line 75
    .line 76
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iput-object v0, p1, Lcc/h$a;->b:Ljava/util/List;

    .line 80
    .line 81
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 82
    .line 83
    return-object p1
.end method
