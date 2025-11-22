.class public final Lio/realm/i1$a;
.super Lio/realm/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public e:J

.field public f:J


# direct methods
.method public constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-direct {p0, v1, v0}, Lio/realm/internal/c;-><init>(IZ)V

    .line 4
    .line 5
    .line 6
    const-string v0, "MyCityListDBModel"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->a(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "cityId"

    .line 13
    .line 14
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Lio/realm/i1$a;->e:J

    .line 19
    .line 20
    const-string v0, "cityName"

    .line 21
    .line 22
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iput-wide v0, p0, Lio/realm/i1$a;->f:J

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final b(Lio/realm/internal/c;Lio/realm/internal/c;)V
    .locals 2

    check-cast p1, Lio/realm/i1$a;

    check-cast p2, Lio/realm/i1$a;

    iget-wide v0, p1, Lio/realm/i1$a;->e:J

    iput-wide v0, p2, Lio/realm/i1$a;->e:J

    iget-wide v0, p1, Lio/realm/i1$a;->f:J

    iput-wide v0, p2, Lio/realm/i1$a;->f:J

    return-void
.end method
