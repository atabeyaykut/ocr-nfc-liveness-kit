.class public final Ldb/v;
.super Ldb/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldb/a<",
        "Lna/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lna/a;

.field public final b:Z

.field public final c:Lp4/g7;

.field public final d:Lva/c;

.field public final e:Z


# direct methods
.method public synthetic constructor <init>(Lna/a;ZLp4/g7;Lva/c;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ldb/v;-><init>(Lna/a;ZLp4/g7;Lva/c;Z)V

    return-void
.end method

.method public constructor <init>(Lna/a;ZLp4/g7;Lva/c;Z)V
    .locals 1

    const-string v0, "containerContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ldb/a;-><init>()V

    iput-object p1, p0, Ldb/v;->a:Lna/a;

    iput-boolean p2, p0, Ldb/v;->b:Z

    iput-object p3, p0, Ldb/v;->c:Lp4/g7;

    iput-object p4, p0, Ldb/v;->d:Lva/c;

    iput-boolean p5, p0, Ldb/v;->e:Z

    return-void
.end method


# virtual methods
.method public final e(Lcc/m0;)Llb/d;
    .locals 2

    .line 1
    sget-object v0, Lcc/q1;->a:Lec/f;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcc/e0;->M0()Lcc/c1;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Lcc/c1;->n()Lma/g;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    instance-of v0, p1, Lma/e;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    check-cast p1, Lma/e;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object p1, v1

    .line 20
    :goto_0
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-static {p1}, Lob/i;->g(Lma/j;)Llb/d;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_1
    return-object v1
.end method
