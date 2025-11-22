.class public final Lc5/m6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc5/y7;

.field public final synthetic b:Z

.field public final synthetic c:Lc5/s;

.field public final synthetic d:Lc5/t6;


# direct methods
.method public constructor <init>(Lc5/t6;Lc5/y7;ZLc5/s;)V
    .locals 0

    iput-object p1, p0, Lc5/m6;->d:Lc5/t6;

    iput-object p2, p0, Lc5/m6;->a:Lc5/y7;

    iput-boolean p3, p0, Lc5/m6;->b:Z

    iput-object p4, p0, Lc5/m6;->c:Lc5/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc5/m6;->d:Lc5/t6;

    .line 2
    .line 3
    iget-object v1, v0, Lc5/t6;->d:Lc5/v2;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 8
    .line 9
    check-cast v0, Lc5/i4;

    .line 10
    .line 11
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 12
    .line 13
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "Discarding data. Failed to send event to service"

    .line 17
    .line 18
    iget-object v0, v0, Lc5/e3;->f:Lc5/c3;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v2, p0, Lc5/m6;->a:Lc5/y7;

    .line 25
    .line 26
    invoke-static {v2}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-boolean v3, p0, Lc5/m6;->b:Z

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v3, p0, Lc5/m6;->c:Lc5/s;

    .line 36
    .line 37
    :goto_0
    invoke-virtual {v0, v1, v3, v2}, Lc5/t6;->g(Lc5/v2;Ls3/a;Lc5/y7;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lc5/t6;->s()V

    .line 41
    .line 42
    .line 43
    return-void
.end method
