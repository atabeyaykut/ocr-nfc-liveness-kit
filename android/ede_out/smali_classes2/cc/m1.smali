.class public final Lcc/m1;
.super Lcc/l1;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcc/l1;


# direct methods
.method public constructor <init>(Lcc/l1;)V
    .locals 0

    iput-object p1, p0, Lcc/m1;->b:Lcc/l1;

    invoke-direct {p0}, Lcc/l1;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lna/h;)Lna/h;
    .locals 1

    const-string v0, "annotations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcc/m1;->b:Lcc/l1;

    invoke-virtual {v0, p1}, Lcc/l1;->c(Lna/h;)Lna/h;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcc/e0;)Lcc/i1;
    .locals 1

    iget-object v0, p0, Lcc/m1;->b:Lcc/l1;

    invoke-virtual {v0, p1}, Lcc/l1;->d(Lcc/e0;)Lcc/i1;

    move-result-object p1

    return-object p1
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcc/m1;->b:Lcc/l1;

    invoke-virtual {v0}, Lcc/l1;->e()Z

    move-result v0

    return v0
.end method

.method public final f(Lcc/e0;Lcc/t1;)Lcc/e0;
    .locals 1

    const-string v0, "topLevelType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcc/m1;->b:Lcc/l1;

    invoke-virtual {v0, p1, p2}, Lcc/l1;->f(Lcc/e0;Lcc/t1;)Lcc/e0;

    move-result-object p1

    return-object p1
.end method
