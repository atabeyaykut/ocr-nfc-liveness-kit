.class public final Lio/realm/a2$a;
.super Lio/realm/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/a2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:J


# direct methods
.method public constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x5

    .line 3
    invoke-direct {p0, v1, v0}, Lio/realm/internal/c;-><init>(IZ)V

    .line 4
    .line 5
    .line 6
    const-string v0, "AccidentReportPolicy"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->a(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "id"

    .line 13
    .line 14
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Lio/realm/a2$a;->e:J

    .line 19
    .line 20
    const-string v0, "productCode"

    .line 21
    .line 22
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iput-wide v0, p0, Lio/realm/a2$a;->f:J

    .line 27
    .line 28
    const-string v0, "endDate"

    .line 29
    .line 30
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    iput-wide v0, p0, Lio/realm/a2$a;->g:J

    .line 35
    .line 36
    const-string v0, "startDate"

    .line 37
    .line 38
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    iput-wide v0, p0, Lio/realm/a2$a;->h:J

    .line 43
    .line 44
    const-string v0, "companyName"

    .line 45
    .line 46
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    iput-wide v0, p0, Lio/realm/a2$a;->i:J

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final b(Lio/realm/internal/c;Lio/realm/internal/c;)V
    .locals 2

    check-cast p1, Lio/realm/a2$a;

    check-cast p2, Lio/realm/a2$a;

    iget-wide v0, p1, Lio/realm/a2$a;->e:J

    iput-wide v0, p2, Lio/realm/a2$a;->e:J

    iget-wide v0, p1, Lio/realm/a2$a;->f:J

    iput-wide v0, p2, Lio/realm/a2$a;->f:J

    iget-wide v0, p1, Lio/realm/a2$a;->g:J

    iput-wide v0, p2, Lio/realm/a2$a;->g:J

    iget-wide v0, p1, Lio/realm/a2$a;->h:J

    iput-wide v0, p2, Lio/realm/a2$a;->h:J

    iget-wide v0, p1, Lio/realm/a2$a;->i:J

    iput-wide v0, p2, Lio/realm/a2$a;->i:J

    return-void
.end method
