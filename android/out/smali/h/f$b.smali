.class public final Lh/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lh/b$c;


# direct methods
.method public constructor <init>(Lh/b$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/f$b;->a:Lh/b$c;

    return-void
.end method


# virtual methods
.method public final L()Led/z;
    .locals 2

    iget-object v0, p0, Lh/f$b;->a:Lh/b$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lh/b$c;->a(I)Led/z;

    move-result-object v0

    return-object v0
.end method

.method public final T()Lh/f$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lh/f$b;->a:Lh/b$c;

    .line 2
    .line 3
    iget-object v1, v0, Lh/b$c;->c:Lh/b;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {v0}, Lh/b$c;->close()V

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Lh/b$c;->a:Lh/b$b;

    .line 10
    .line 11
    iget-object v0, v0, Lh/b$b;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lh/b;->c(Ljava/lang/String;)Lh/b$a;

    .line 14
    .line 15
    .line 16
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit v1

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lh/f$a;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lh/f$a;-><init>(Lh/b$a;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v1

    .line 28
    :goto_0
    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    monitor-exit v1

    .line 31
    throw v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lh/f$b;->a:Lh/b$c;

    invoke-virtual {v0}, Lh/b$c;->close()V

    return-void
.end method

.method public final l()Led/z;
    .locals 2

    iget-object v0, p0, Lh/f$b;->a:Lh/b$c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lh/b$c;->a(I)Led/z;

    move-result-object v0

    return-object v0
.end method
