.class public final Lio/realm/internal/OsObjectSchemaInfo$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsObjectSchemaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[J

.field public final c:Z

.field public d:I

.field public final e:[J

.field public f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lio/realm/internal/OsObjectSchemaInfo$a;->d:I

    iput v0, p0, Lio/realm/internal/OsObjectSchemaInfo$a;->f:I

    iput-object p1, p0, Lio/realm/internal/OsObjectSchemaInfo$a;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lio/realm/internal/OsObjectSchemaInfo$a;->c:Z

    new-array p1, p3, [J

    iput-object p1, p0, Lio/realm/internal/OsObjectSchemaInfo$a;->b:[J

    new-array p1, v0, [J

    iput-object p1, p0, Lio/realm/internal/OsObjectSchemaInfo$a;->e:[J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lio/realm/internal/Property;->a(Lio/realm/RealmFieldType;Z)I

    move-result p2

    const-string v0, ""

    invoke-static {p1, v0, p2, p3}, Lio/realm/internal/Property;->nativeCreatePersistedLinkProperty(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide p1

    iget p3, p0, Lio/realm/internal/OsObjectSchemaInfo$a;->d:I

    iget-object v0, p0, Lio/realm/internal/OsObjectSchemaInfo$a;->b:[J

    aput-wide p1, v0, p3

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lio/realm/internal/OsObjectSchemaInfo$a;->d:I

    return-void
.end method

.method public final b(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V
    .locals 1

    const-string v0, ""

    invoke-static {p2, p5}, Lio/realm/internal/Property;->a(Lio/realm/RealmFieldType;Z)I

    move-result p2

    invoke-static {p1, v0, p2, p3, p4}, Lio/realm/internal/Property;->nativeCreatePersistedProperty(Ljava/lang/String;Ljava/lang/String;IZZ)J

    move-result-wide p1

    iget p3, p0, Lio/realm/internal/OsObjectSchemaInfo$a;->d:I

    iget-object p4, p0, Lio/realm/internal/OsObjectSchemaInfo$a;->b:[J

    aput-wide p1, p4, p3

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lio/realm/internal/OsObjectSchemaInfo$a;->d:I

    return-void
.end method

.method public final c()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 6

    iget v0, p0, Lio/realm/internal/OsObjectSchemaInfo$a;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lio/realm/internal/OsObjectSchemaInfo$a;->f:I

    if-eq v0, v1, :cond_0

    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo;

    const-string v2, ""

    iget-object v3, p0, Lio/realm/internal/OsObjectSchemaInfo$a;->a:Ljava/lang/String;

    iget-boolean v4, p0, Lio/realm/internal/OsObjectSchemaInfo$a;->c:Z

    invoke-direct {v0, v2, v3, v4}, Lio/realm/internal/OsObjectSchemaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lio/realm/internal/OsObjectSchemaInfo$a;->e:[J

    iget-wide v3, v0, Lio/realm/internal/OsObjectSchemaInfo;->a:J

    iget-object v5, p0, Lio/realm/internal/OsObjectSchemaInfo$a;->b:[J

    invoke-static {v3, v4, v5, v2}, Lio/realm/internal/OsObjectSchemaInfo;->a(J[J[J)V

    iput v1, p0, Lio/realm/internal/OsObjectSchemaInfo$a;->d:I

    iput v1, p0, Lio/realm/internal/OsObjectSchemaInfo$a;->f:I

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'OsObjectSchemaInfo.build()\' has been called before on this object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
