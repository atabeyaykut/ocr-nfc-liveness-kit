.class public final Lc5/k6;
.super Lc5/l;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lc5/t6;


# direct methods
.method public constructor <init>(Lc5/t6;Lc5/z4;)V
    .locals 0

    iput-object p1, p0, Lc5/k6;->e:Lc5/t6;

    invoke-direct {p0, p2}, Lc5/l;-><init>(Lc5/z4;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc5/k6;->e:Lc5/t6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc5/t2;->b()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lc5/t6;->n()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 14
    .line 15
    check-cast v1, Lc5/i4;

    .line 16
    .line 17
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 18
    .line 19
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 20
    .line 21
    .line 22
    const-string v2, "Inactivity, disconnecting from the service"

    .line 23
    .line 24
    iget-object v1, v1, Lc5/e3;->p:Lc5/c3;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lc5/t6;->w()V

    .line 30
    .line 31
    .line 32
    return-void
.end method
