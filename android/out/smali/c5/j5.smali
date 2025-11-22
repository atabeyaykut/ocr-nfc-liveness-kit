.class public final Lc5/j5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lc5/v5;


# direct methods
.method public constructor <init>(Lc5/v5;J)V
    .locals 0

    iput-object p1, p0, Lc5/j5;->b:Lc5/v5;

    iput-wide p2, p0, Lc5/j5;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc5/j5;->b:Lc5/v5;

    .line 2
    .line 3
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 4
    .line 5
    check-cast v1, Lc5/i4;

    .line 6
    .line 7
    iget-object v1, v1, Lc5/i4;->h:Lc5/s3;

    .line 8
    .line 9
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v1, Lc5/s3;->k:Lc5/o3;

    .line 13
    .line 14
    iget-wide v2, p0, Lc5/j5;->a:J

    .line 15
    .line 16
    invoke-virtual {v1, v2, v3}, Lc5/o3;->b(J)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 20
    .line 21
    check-cast v0, Lc5/i4;

    .line 22
    .line 23
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 24
    .line 25
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v0, v0, Lc5/e3;->n:Lc5/c3;

    .line 33
    .line 34
    const-string v2, "Session timeout duration set"

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
