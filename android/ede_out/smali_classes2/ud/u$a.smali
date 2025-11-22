.class public final Lud/u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrc/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lud/u;->n0(Lud/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lud/d;

.field public final synthetic b:Lud/u;


# direct methods
.method public constructor <init>(Lud/u;Lud/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lud/u$a;->b:Lud/u;

    iput-object p2, p0, Lud/u$a;->a:Lud/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lvc/e;Ljava/io/IOException;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lud/u$a;->a:Lud/d;

    iget-object v0, p0, Lud/u$a;->b:Lud/u;

    invoke-interface {p1, v0, p2}, Lud/d;->onFailure(Lud/b;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lud/h0;->n(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final b(Lrc/b0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lud/u$a;->a:Lud/d;

    .line 2
    .line 3
    iget-object v1, p0, Lud/u$a;->b:Lud/u;

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v1, p1}, Lud/u;->d(Lrc/b0;)Lud/c0;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    invoke-interface {v0, v1, p1}, Lud/d;->onResponse(Lud/b;Lud/c0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    invoke-static {p1}, Lud/h0;->n(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :catchall_1
    move-exception p1

    .line 22
    invoke-static {p1}, Lud/h0;->n(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    :try_start_2
    invoke-interface {v0, v1, p1}, Lud/d;->onFailure(Lud/b;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catchall_2
    move-exception p1

    .line 30
    invoke-static {p1}, Lud/h0;->n(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    :goto_1
    return-void
.end method
