.class public final Ldb/r;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lma/b;",
        "Lcc/e0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lma/a1;


# direct methods
.method public constructor <init>(Lma/a1;)V
    .locals 0

    iput-object p1, p0, Ldb/r;->a:Lma/a1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lma/b;

    .line 2
    .line 3
    const-string v0, "it"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lma/a;->g()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Ldb/r;->a:Lma/a1;

    .line 13
    .line 14
    invoke-interface {v0}, Lma/a1;->getIndex()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lma/a1;

    .line 23
    .line 24
    invoke-interface {p1}, Lma/z0;->getType()Lcc/e0;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "it.valueParameters[p.index].type"

    .line 29
    .line 30
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object p1
.end method
