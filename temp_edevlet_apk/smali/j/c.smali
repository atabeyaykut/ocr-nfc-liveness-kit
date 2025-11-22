.class public final Lj/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/c$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/nio/ByteBuffer;

.field public final b:Lp/k;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Lp/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj/c;->a:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Lj/c;->b:Lp/k;

    return-void
.end method


# virtual methods
.method public final a(Lp9/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "-",
            "Lj/g;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lj/c;->a:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :try_start_0
    new-instance v1, Led/e;

    .line 5
    .line 6
    invoke-direct {v1}, Led/e;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, p1}, Led/e;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 13
    .line 14
    .line 15
    new-instance p1, Lj/l;

    .line 16
    .line 17
    iget-object v0, p0, Lj/c;->b:Lp/k;

    .line 18
    .line 19
    iget-object v0, v0, Lp/k;->a:Landroid/content/Context;

    .line 20
    .line 21
    new-instance v2, Lg/n;

    .line 22
    .line 23
    sget-object v3, Lu/c;->a:[Landroid/graphics/Bitmap$Config;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 30
    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-direct {v2, v1, v0, v3}, Lg/n;-><init>(Led/g;Ljava/io/File;Lg/l$a;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x2

    .line 37
    invoke-direct {p1, v2, v3, v0}, Lj/l;-><init>(Lg/l;Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    return-object p1

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 43
    .line 44
    .line 45
    throw v1
.end method
