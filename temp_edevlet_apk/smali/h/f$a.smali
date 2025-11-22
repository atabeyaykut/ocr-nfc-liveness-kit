.class public final Lh/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lh/b$a;


# direct methods
.method public constructor <init>(Lh/b$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/f$a;->a:Lh/b$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lh/f$a;->a:Lh/b$a;

    invoke-virtual {v1, v0}, Lh/b$a;->a(Z)V

    return-void
.end method

.method public final b()Lh/f$b;
    .locals 3

    .line 1
    iget-object v0, p0, Lh/f$a;->a:Lh/b$a;

    .line 2
    .line 3
    iget-object v1, v0, Lh/b$a;->d:Lh/b;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    const/4 v2, 0x1

    .line 7
    :try_start_0
    invoke-virtual {v0, v2}, Lh/b$a;->a(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Lh/b$a;->a:Lh/b$b;

    .line 11
    .line 12
    iget-object v0, v0, Lh/b$b;->a:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lh/b;->d(Ljava/lang/String;)Lh/b$c;

    .line 15
    .line 16
    .line 17
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit v1

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Lh/f$b;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lh/f$b;-><init>(Lh/b$c;)V

    .line 26
    .line 27
    .line 28
    move-object v0, v1

    .line 29
    :goto_0
    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    monitor-exit v1

    .line 32
    throw v0
.end method

.method public final c()Led/z;
    .locals 2

    iget-object v0, p0, Lh/f$a;->a:Lh/b$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lh/b$a;->b(I)Led/z;

    move-result-object v0

    return-object v0
.end method

.method public final d()Led/z;
    .locals 2

    iget-object v0, p0, Lh/f$a;->a:Lh/b$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lh/b$a;->b(I)Led/z;

    move-result-object v0

    return-object v0
.end method
