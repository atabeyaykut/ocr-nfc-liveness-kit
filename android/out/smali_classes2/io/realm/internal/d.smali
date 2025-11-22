.class public final Lio/realm/internal/d;
.super Lio/realm/internal/OsCollectionChangeSet;
.source "SourceFile"


# static fields
.field public static final c:[Lio/realm/b0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lio/realm/b0;

    sput-object v0, Lio/realm/internal/d;->c:[Lio/realm/b0;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lio/realm/internal/OsCollectionChangeSet;-><init>(JZ)V

    return-void
.end method


# virtual methods
.method public final a()[Lio/realm/b0;
    .locals 1

    sget-object v0, Lio/realm/internal/d;->c:[Lio/realm/b0;

    return-object v0
.end method

.method public final b()[Lio/realm/b0;
    .locals 1

    sget-object v0, Lio/realm/internal/d;->c:[Lio/realm/b0;

    return-object v0
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()[Lio/realm/b0;
    .locals 1

    sget-object v0, Lio/realm/internal/d;->c:[Lio/realm/b0;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final getNativeFinalizerPtr()J
    .locals 2

    sget-wide v0, Lio/realm/internal/OsCollectionChangeSet;->b:J

    return-wide v0
.end method

.method public final getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsCollectionChangeSet;->a:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lio/realm/internal/OsCollectionChangeSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
