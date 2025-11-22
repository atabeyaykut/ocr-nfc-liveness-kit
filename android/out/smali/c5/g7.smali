.class public final Lc5/g7;
.super Lc5/l;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lc5/h7;


# direct methods
.method public constructor <init>(Lc5/h7;Lc5/i4;)V
    .locals 0

    iput-object p1, p0, Lc5/g7;->e:Lc5/h7;

    invoke-direct {p0, p2}, Lc5/l;-><init>(Lc5/z4;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc5/g7;->e:Lc5/h7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc5/h7;->g()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 7
    .line 8
    check-cast v1, Lc5/i4;

    .line 9
    .line 10
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 11
    .line 12
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "Starting upload from DelayedRunnable"

    .line 16
    .line 17
    iget-object v1, v1, Lc5/e3;->p:Lc5/c3;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Lc5/i7;->b:Lc5/o7;

    .line 23
    .line 24
    invoke-virtual {v0}, Lc5/o7;->t()V

    .line 25
    .line 26
    .line 27
    return-void
.end method
