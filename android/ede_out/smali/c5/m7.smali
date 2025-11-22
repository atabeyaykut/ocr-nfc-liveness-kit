.class public final Lc5/m7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:Lc5/b4;


# direct methods
.method public constructor <init>(Lc5/b4;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lc5/m7;->c:Lc5/b4;

    iput-object p2, p0, Lc5/m7;->a:Ljava/lang/String;

    iput-object p3, p0, Lc5/m7;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lc5/m7;->c:Lc5/b4;

    .line 2
    .line 3
    iget-object v1, v0, Lc5/b4;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lc5/o7;

    .line 6
    .line 7
    invoke-virtual {v1}, Lc5/o7;->Q()Lc5/v7;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lc5/m7;->a:Ljava/lang/String;

    .line 12
    .line 13
    const-string v4, "_err"

    .line 14
    .line 15
    iget-object v5, p0, Lc5/m7;->b:Landroid/os/Bundle;

    .line 16
    .line 17
    iget-object v0, v0, Lc5/b4;->a:Ljava/lang/Object;

    .line 18
    .line 19
    move-object v1, v0

    .line 20
    check-cast v1, Lc5/o7;

    .line 21
    .line 22
    invoke-virtual {v1}, Lc5/o7;->i()Lw3/a;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lc5/w;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v7

    .line 35
    const-string v6, "auto"

    .line 36
    .line 37
    const/4 v9, 0x0

    .line 38
    invoke-virtual/range {v2 .. v9}, Lc5/v7;->p0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)Lc5/s;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v0, Lc5/o7;

    .line 43
    .line 44
    invoke-static {v1}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lc5/m7;->a:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Lc5/o7;->e(Lc5/s;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
