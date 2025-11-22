.class public final Lu/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lu/f;

.field public static final b:Ljava/io/File;

.field public static c:I

.field public static d:J

.field public static e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu/f;

    invoke-direct {v0}, Lu/f;-><init>()V

    sput-object v0, Lu/f;->a:Lu/f;

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/fd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/f;->b:Ljava/io/File;

    const/16 v0, 0x1e

    sput v0, Lu/f;->c:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lu/f;->d:J

    const/4 v0, 0x1

    sput-boolean v0, Lu/f;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
