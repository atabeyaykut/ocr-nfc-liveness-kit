.class public final Lcc/u;
.super Lcc/l1;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# instance fields
.field public final b:Lcc/l1;

.field public final c:Lcc/l1;


# direct methods
.method public constructor <init>(Lcc/l1;Lcc/l1;)V
    .locals 0

    invoke-direct {p0}, Lcc/l1;-><init>()V

    iput-object p1, p0, Lcc/u;->b:Lcc/l1;

    iput-object p2, p0, Lcc/u;->c:Lcc/l1;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcc/u;->b:Lcc/l1;

    invoke-virtual {v0}, Lcc/l1;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcc/u;->c:Lcc/l1;

    invoke-virtual {v0}, Lcc/l1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcc/u;->b:Lcc/l1;

    invoke-virtual {v0}, Lcc/l1;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcc/u;->c:Lcc/l1;

    invoke-virtual {v0}, Lcc/l1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final c(Lna/h;)Lna/h;
    .locals 1

    const-string v0, "annotations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcc/u;->b:Lcc/l1;

    invoke-virtual {v0, p1}, Lcc/l1;->c(Lna/h;)Lna/h;

    move-result-object p1

    iget-object v0, p0, Lcc/u;->c:Lcc/l1;

    invoke-virtual {v0, p1}, Lcc/l1;->c(Lna/h;)Lna/h;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcc/e0;)Lcc/i1;
    .locals 1

    iget-object v0, p0, Lcc/u;->b:Lcc/l1;

    invoke-virtual {v0, p1}, Lcc/l1;->d(Lcc/e0;)Lcc/i1;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcc/u;->c:Lcc/l1;

    invoke-virtual {v0, p1}, Lcc/l1;->d(Lcc/e0;)Lcc/i1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final f(Lcc/e0;Lcc/t1;)Lcc/e0;
    .locals 1

    const-string v0, "topLevelType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcc/u;->b:Lcc/l1;

    invoke-virtual {v0, p1, p2}, Lcc/l1;->f(Lcc/e0;Lcc/t1;)Lcc/e0;

    move-result-object p1

    iget-object v0, p0, Lcc/u;->c:Lcc/l1;

    invoke-virtual {v0, p1, p2}, Lcc/l1;->f(Lcc/e0;Lcc/t1;)Lcc/e0;

    move-result-object p1

    return-object p1
.end method
