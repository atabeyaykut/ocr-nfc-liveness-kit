.class public final Lef/b;
.super Ll8/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ll8/p<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ll8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll8/p<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll8/p;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ll8/p;-><init>()V

    iput-object p1, p0, Lef/b;->a:Ll8/p;

    iput-object p2, p0, Lef/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ll8/u;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll8/u;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "reader"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Ll8/v;

    .line 8
    .line 9
    new-instance v1, Ll8/v;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Ll8/v;-><init>(Ll8/v;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lef/b;->a:Ll8/p;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ll8/p;->a(Ll8/u;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0
    :try_end_0
    .catch Ll8/r; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :catch_0
    move-exception v0

    .line 24
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lef/b;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    :goto_0
    invoke-virtual {v1}, Ll8/v;->close()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ll8/u;->p()V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :goto_1
    invoke-virtual {v1}, Ll8/v;->close()V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method public final c(Ll8/y;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll8/y;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lef/b;->a:Ll8/p;

    invoke-virtual {v0, p1, p2}, Ll8/p;->c(Ll8/y;Ljava/lang/Object;)V

    return-void
.end method
