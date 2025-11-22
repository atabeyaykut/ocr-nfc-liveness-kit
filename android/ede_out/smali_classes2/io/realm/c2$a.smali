.class public final Lio/realm/c2$a;
.super Lio/realm/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/c2;
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

.field public j:J

.field public k:J

.field public l:J

.field public m:J


# direct methods
.method public constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x9

    .line 3
    .line 4
    invoke-direct {p0, v1, v0}, Lio/realm/internal/c;-><init>(IZ)V

    .line 5
    .line 6
    .line 7
    const-string v0, "AccidentReportVehicle"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->a(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "id"

    .line 14
    .line 15
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Lio/realm/c2$a;->e:J

    .line 20
    .line 21
    const-string v0, "plateCityCode"

    .line 22
    .line 23
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    iput-wide v0, p0, Lio/realm/c2$a;->f:J

    .line 28
    .line 29
    const-string v0, "plateNumber"

    .line 30
    .line 31
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    iput-wide v0, p0, Lio/realm/c2$a;->g:J

    .line 36
    .line 37
    const-string v0, "ownerDifferentFromDriver"

    .line 38
    .line 39
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    iput-wide v0, p0, Lio/realm/c2$a;->h:J

    .line 44
    .line 45
    const-string v0, "documentSerialCode"

    .line 46
    .line 47
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    iput-wide v0, p0, Lio/realm/c2$a;->i:J

    .line 52
    .line 53
    const-string v0, "documentSerialNumber"

    .line 54
    .line 55
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    iput-wide v0, p0, Lio/realm/c2$a;->j:J

    .line 60
    .line 61
    const-string v0, "ownerIdentityNumber"

    .line 62
    .line 63
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    iput-wide v0, p0, Lio/realm/c2$a;->k:J

    .line 68
    .line 69
    const-string v0, "updatedDate"

    .line 70
    .line 71
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v0

    .line 75
    iput-wide v0, p0, Lio/realm/c2$a;->l:J

    .line 76
    .line 77
    const-string v0, "policies"

    .line 78
    .line 79
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v0

    .line 83
    iput-wide v0, p0, Lio/realm/c2$a;->m:J

    .line 84
    .line 85
    return-void
.end method


# virtual methods
.method public final b(Lio/realm/internal/c;Lio/realm/internal/c;)V
    .locals 2

    check-cast p1, Lio/realm/c2$a;

    check-cast p2, Lio/realm/c2$a;

    iget-wide v0, p1, Lio/realm/c2$a;->e:J

    iput-wide v0, p2, Lio/realm/c2$a;->e:J

    iget-wide v0, p1, Lio/realm/c2$a;->f:J

    iput-wide v0, p2, Lio/realm/c2$a;->f:J

    iget-wide v0, p1, Lio/realm/c2$a;->g:J

    iput-wide v0, p2, Lio/realm/c2$a;->g:J

    iget-wide v0, p1, Lio/realm/c2$a;->h:J

    iput-wide v0, p2, Lio/realm/c2$a;->h:J

    iget-wide v0, p1, Lio/realm/c2$a;->i:J

    iput-wide v0, p2, Lio/realm/c2$a;->i:J

    iget-wide v0, p1, Lio/realm/c2$a;->j:J

    iput-wide v0, p2, Lio/realm/c2$a;->j:J

    iget-wide v0, p1, Lio/realm/c2$a;->k:J

    iput-wide v0, p2, Lio/realm/c2$a;->k:J

    iget-wide v0, p1, Lio/realm/c2$a;->l:J

    iput-wide v0, p2, Lio/realm/c2$a;->l:J

    iget-wide v0, p1, Lio/realm/c2$a;->m:J

    iput-wide v0, p2, Lio/realm/c2$a;->m:J

    return-void
.end method
