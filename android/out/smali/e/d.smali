.class public final Le/d;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lh/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/f$a;


# direct methods
.method public constructor <init>(Le/f$a;)V
    .locals 0

    iput-object p1, p0, Le/d;->a:Le/f$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lu/k;->a:Lu/k;

    .line 2
    .line 3
    iget-object v1, p0, Le/d;->a:Le/f$a;

    .line 4
    .line 5
    iget-object v1, v1, Le/f$a;->a:Landroid/content/Context;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v2, Lu/k;->b:Lh/f;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    new-instance v2, Lh/a$a;

    .line 13
    .line 14
    invoke-direct {v2}, Lh/a$a;-><init>()V

    .line 15
    .line 16
    .line 17
    sget-object v3, Lu/c;->a:[Landroid/graphics/Bitmap$Config;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Lv9/d;->h0(Ljava/io/File;)Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    sget-object v3, Led/z;->b:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v1}, Led/z$a;->b(Ljava/io/File;)Led/z;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, v2, Lh/a$a;->a:Led/z;

    .line 37
    .line 38
    invoke-virtual {v2}, Lh/a$a;->a()Lh/f;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    sput-object v2, Lu/k;->b:Lh/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    :cond_0
    monitor-exit v0

    .line 45
    return-object v2

    .line 46
    :catchall_0
    move-exception v1

    .line 47
    monitor-exit v0

    .line 48
    throw v1
.end method
