.class public final Lio/realm/q1$a;
.super Lio/realm/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/q1;
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

.field public n:J

.field public o:J

.field public p:J

.field public q:J

.field public r:J

.field public s:J

.field public t:J

.field public u:J

.field public v:J

.field public w:J

.field public x:J


# direct methods
.method public constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x14

    .line 3
    .line 4
    invoke-direct {p0, v1, v0}, Lio/realm/internal/c;-><init>(IZ)V

    .line 5
    .line 6
    .line 7
    const-string v0, "AccidentMergedReport"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->a(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "reportPartyStatus"

    .line 14
    .line 15
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Lio/realm/q1$a;->e:J

    .line 20
    .line 21
    const-string v0, "accidentDate"

    .line 22
    .line 23
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    iput-wide v0, p0, Lio/realm/q1$a;->f:J

    .line 28
    .line 29
    const-string v0, "role"

    .line 30
    .line 31
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    iput-wide v0, p0, Lio/realm/q1$a;->g:J

    .line 36
    .line 37
    const-string v0, "reportId"

    .line 38
    .line 39
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    iput-wide v0, p0, Lio/realm/q1$a;->h:J

    .line 44
    .line 45
    const-string v0, "city"

    .line 46
    .line 47
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    iput-wide v0, p0, Lio/realm/q1$a;->i:J

    .line 52
    .line 53
    const-string v0, "district"

    .line 54
    .line 55
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    iput-wide v0, p0, Lio/realm/q1$a;->j:J

    .line 60
    .line 61
    const-string v0, "reportStatus"

    .line 62
    .line 63
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    iput-wide v0, p0, Lio/realm/q1$a;->k:J

    .line 68
    .line 69
    const-string v0, "plate"

    .line 70
    .line 71
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v0

    .line 75
    iput-wide v0, p0, Lio/realm/q1$a;->l:J

    .line 76
    .line 77
    const-string v0, "expireDate"

    .line 78
    .line 79
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v0

    .line 83
    iput-wide v0, p0, Lio/realm/q1$a;->m:J

    .line 84
    .line 85
    const-string v0, "reportPartyId"

    .line 86
    .line 87
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 88
    .line 89
    .line 90
    move-result-wide v0

    .line 91
    iput-wide v0, p0, Lio/realm/q1$a;->n:J

    .line 92
    .line 93
    const-string v0, "id"

    .line 94
    .line 95
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 96
    .line 97
    .line 98
    move-result-wide v0

    .line 99
    iput-wide v0, p0, Lio/realm/q1$a;->o:J

    .line 100
    .line 101
    const-string v0, "consolidatedStatus"

    .line 102
    .line 103
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 104
    .line 105
    .line 106
    move-result-wide v0

    .line 107
    iput-wide v0, p0, Lio/realm/q1$a;->p:J

    .line 108
    .line 109
    const-string v0, "updateDate"

    .line 110
    .line 111
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 112
    .line 113
    .line 114
    move-result-wide v0

    .line 115
    iput-wide v0, p0, Lio/realm/q1$a;->q:J

    .line 116
    .line 117
    const-string v0, "createDate"

    .line 118
    .line 119
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 120
    .line 121
    .line 122
    move-result-wide v0

    .line 123
    iput-wide v0, p0, Lio/realm/q1$a;->r:J

    .line 124
    .line 125
    const-string v0, "status"

    .line 126
    .line 127
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 128
    .line 129
    .line 130
    move-result-wide v0

    .line 131
    iput-wide v0, p0, Lio/realm/q1$a;->s:J

    .line 132
    .line 133
    const-string v0, "reportNumber"

    .line 134
    .line 135
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 136
    .line 137
    .line 138
    move-result-wide v0

    .line 139
    iput-wide v0, p0, Lio/realm/q1$a;->t:J

    .line 140
    .line 141
    const-string v0, "vehiclePlateNumber"

    .line 142
    .line 143
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 144
    .line 145
    .line 146
    move-result-wide v0

    .line 147
    iput-wide v0, p0, Lio/realm/q1$a;->u:J

    .line 148
    .line 149
    const-string v0, "vehiclePlateCityCode"

    .line 150
    .line 151
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 152
    .line 153
    .line 154
    move-result-wide v0

    .line 155
    iput-wide v0, p0, Lio/realm/q1$a;->v:J

    .line 156
    .line 157
    const-string v0, "hasPdf"

    .line 158
    .line 159
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 160
    .line 161
    .line 162
    move-result-wide v0

    .line 163
    iput-wide v0, p0, Lio/realm/q1$a;->w:J

    .line 164
    .line 165
    const-string v0, "participants"

    .line 166
    .line 167
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    .line 168
    .line 169
    .line 170
    move-result-wide v0

    .line 171
    iput-wide v0, p0, Lio/realm/q1$a;->x:J

    .line 172
    .line 173
    return-void
.end method


# virtual methods
.method public final b(Lio/realm/internal/c;Lio/realm/internal/c;)V
    .locals 2

    check-cast p1, Lio/realm/q1$a;

    check-cast p2, Lio/realm/q1$a;

    iget-wide v0, p1, Lio/realm/q1$a;->e:J

    iput-wide v0, p2, Lio/realm/q1$a;->e:J

    iget-wide v0, p1, Lio/realm/q1$a;->f:J

    iput-wide v0, p2, Lio/realm/q1$a;->f:J

    iget-wide v0, p1, Lio/realm/q1$a;->g:J

    iput-wide v0, p2, Lio/realm/q1$a;->g:J

    iget-wide v0, p1, Lio/realm/q1$a;->h:J

    iput-wide v0, p2, Lio/realm/q1$a;->h:J

    iget-wide v0, p1, Lio/realm/q1$a;->i:J

    iput-wide v0, p2, Lio/realm/q1$a;->i:J

    iget-wide v0, p1, Lio/realm/q1$a;->j:J

    iput-wide v0, p2, Lio/realm/q1$a;->j:J

    iget-wide v0, p1, Lio/realm/q1$a;->k:J

    iput-wide v0, p2, Lio/realm/q1$a;->k:J

    iget-wide v0, p1, Lio/realm/q1$a;->l:J

    iput-wide v0, p2, Lio/realm/q1$a;->l:J

    iget-wide v0, p1, Lio/realm/q1$a;->m:J

    iput-wide v0, p2, Lio/realm/q1$a;->m:J

    iget-wide v0, p1, Lio/realm/q1$a;->n:J

    iput-wide v0, p2, Lio/realm/q1$a;->n:J

    iget-wide v0, p1, Lio/realm/q1$a;->o:J

    iput-wide v0, p2, Lio/realm/q1$a;->o:J

    iget-wide v0, p1, Lio/realm/q1$a;->p:J

    iput-wide v0, p2, Lio/realm/q1$a;->p:J

    iget-wide v0, p1, Lio/realm/q1$a;->q:J

    iput-wide v0, p2, Lio/realm/q1$a;->q:J

    iget-wide v0, p1, Lio/realm/q1$a;->r:J

    iput-wide v0, p2, Lio/realm/q1$a;->r:J

    iget-wide v0, p1, Lio/realm/q1$a;->s:J

    iput-wide v0, p2, Lio/realm/q1$a;->s:J

    iget-wide v0, p1, Lio/realm/q1$a;->t:J

    iput-wide v0, p2, Lio/realm/q1$a;->t:J

    iget-wide v0, p1, Lio/realm/q1$a;->u:J

    iput-wide v0, p2, Lio/realm/q1$a;->u:J

    iget-wide v0, p1, Lio/realm/q1$a;->v:J

    iput-wide v0, p2, Lio/realm/q1$a;->v:J

    iget-wide v0, p1, Lio/realm/q1$a;->w:J

    iput-wide v0, p2, Lio/realm/q1$a;->w:J

    iget-wide v0, p1, Lio/realm/q1$a;->x:J

    iput-wide v0, p2, Lio/realm/q1$a;->x:J

    return-void
.end method
