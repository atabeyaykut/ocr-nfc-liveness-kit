.class public final Lab/c;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lcc/e0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lab/d;

.field public final synthetic b:Lma/w0;

.field public final synthetic c:Lab/a;

.field public final synthetic d:Lcc/c1;

.field public final synthetic e:Lcb/j;


# direct methods
.method public constructor <init>(Lab/d;Lma/w0;Lab/a;Lcc/c1;Lcb/j;)V
    .locals 0

    iput-object p1, p0, Lab/c;->a:Lab/d;

    iput-object p2, p0, Lab/c;->b:Lma/w0;

    iput-object p3, p0, Lab/c;->c:Lab/a;

    iput-object p4, p0, Lab/c;->d:Lcc/c1;

    iput-object p5, p0, Lab/c;->e:Lcb/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v0, p0, Lab/c;->a:Lab/d;

    .line 2
    .line 3
    iget-object v0, v0, Lab/d;->d:Lcc/f1;

    .line 4
    .line 5
    iget-object v1, p0, Lab/c;->d:Lcc/c1;

    .line 6
    .line 7
    invoke-interface {v1}, Lcc/c1;->n()Lma/g;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v1}, Lma/g;->q()Lcc/m0;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    move-object v6, v1

    .line 20
    iget-object v2, p0, Lab/c;->c:Lab/a;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    const/16 v7, 0x1f

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-static/range {v2 .. v7}, Lab/a;->e(Lab/a;IZLjava/util/Set;Lcc/m0;I)Lab/a;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    iget-object v1, p0, Lab/c;->e:Lcb/j;

    .line 35
    .line 36
    invoke-interface {v1}, Lcb/j;->v()Z

    .line 37
    .line 38
    .line 39
    move-result v10

    .line 40
    const/4 v11, 0x0

    .line 41
    const/4 v12, 0x0

    .line 42
    const/16 v13, 0x3b

    .line 43
    .line 44
    const/4 v9, 0x0

    .line 45
    invoke-static/range {v8 .. v13}, Lab/a;->e(Lab/a;IZLjava/util/Set;Lcc/m0;I)Lab/a;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v2, p0, Lab/c;->b:Lma/w0;

    .line 50
    .line 51
    invoke-virtual {v0, v2, v1}, Lcc/f1;->a(Lma/w0;Lcc/x;)Lcc/e0;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
