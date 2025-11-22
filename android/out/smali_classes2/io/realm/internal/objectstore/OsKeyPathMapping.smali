.class public Lio/realm/internal/objectstore/OsKeyPathMapping;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/i;


# static fields
.field public static final b:J


# instance fields
.field public final a:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lio/realm/internal/objectstore/OsKeyPathMapping;->nativeGetFinalizerMethodPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/objectstore/OsKeyPathMapping;->b:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/realm/internal/objectstore/OsKeyPathMapping;->a:J

    invoke-static {p1, p2}, Lio/realm/internal/objectstore/OsKeyPathMapping;->nativeCreateMapping(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/realm/internal/objectstore/OsKeyPathMapping;->a:J

    sget-object p1, Lio/realm/internal/h;->b:Lio/realm/internal/h;

    invoke-virtual {p1, p0}, Lio/realm/internal/h;->a(Lio/realm/internal/i;)V

    return-void
.end method

.method private static native nativeCreateMapping(J)J
.end method

.method private static native nativeGetFinalizerMethodPtr()J
.end method


# virtual methods
.method public final getNativeFinalizerPtr()J
    .locals 2

    sget-wide v0, Lio/realm/internal/objectstore/OsKeyPathMapping;->b:J

    return-wide v0
.end method

.method public final getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/objectstore/OsKeyPathMapping;->a:J

    return-wide v0
.end method
