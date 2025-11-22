.class public final Le1/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/m$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Le1/w;

.field public final b:Lq1/d;


# direct methods
.method public constructor <init>(Le1/w;Lq1/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1/x$a;->a:Le1/w;

    iput-object p2, p0, Le1/x$a;->b:Lq1/d;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Ly0/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le1/x$a;->b:Lq1/d;

    .line 2
    .line 3
    iget-object v0, v0, Lq1/d;->b:Ljava/io/IOException;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {p2, p1}, Ly0/c;->d(Landroid/graphics/Bitmap;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    throw v0

    .line 13
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Le1/x$a;->a:Le1/w;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, v0, Le1/w;->a:[B

    .line 5
    .line 6
    array-length v1, v1

    .line 7
    iput v1, v0, Le1/w;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0

    .line 13
    throw v1
.end method
