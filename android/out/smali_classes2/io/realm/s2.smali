.class public final Lio/realm/s2;
.super Ltr/gov/turkiye/edevlet/kapisi/data/service/NewestServiceModelRealm;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/s2$a;
    }
.end annotation


# static fields
.field public static final c:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field public a:Lio/realm/s2$a;

.field public b:Lio/realm/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/f0<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/NewestServiceModelRealm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [J

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    new-array v2, v1, [J

    .line 6
    .line 7
    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    .line 8
    .line 9
    invoke-static {v3, v1}, Lio/realm/internal/Property;->a(Lio/realm/RealmFieldType;Z)I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const-string v5, "serviceCode"

    .line 14
    .line 15
    const-string v6, ""

    .line 16
    .line 17
    const/4 v7, 0x1

    .line 18
    invoke-static {v5, v6, v4, v7, v1}, Lio/realm/internal/Property;->nativeCreatePersistedProperty(Ljava/lang/String;Ljava/lang/String;IZZ)J

    .line 19
    .line 20
    .line 21
    move-result-wide v4

    .line 22
    aput-wide v4, v0, v1

    .line 23
    .line 24
    invoke-static {v3, v1}, Lio/realm/internal/Property;->a(Lio/realm/RealmFieldType;Z)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const-string v4, "serviceInsertion"

    .line 29
    .line 30
    invoke-static {v4, v6, v3, v1, v7}, Lio/realm/internal/Property;->nativeCreatePersistedProperty(Ljava/lang/String;Ljava/lang/String;IZZ)J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    aput-wide v3, v0, v7

    .line 35
    .line 36
    new-instance v3, Lio/realm/internal/OsObjectSchemaInfo;

    .line 37
    .line 38
    const-string v4, "NewestServiceModelRealm"

    .line 39
    .line 40
    invoke-direct {v3, v6, v4, v1}, Lio/realm/internal/OsObjectSchemaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    iget-wide v4, v3, Lio/realm/internal/OsObjectSchemaInfo;->a:J

    .line 44
    .line 45
    invoke-static {v4, v5, v0, v2}, Lio/realm/internal/OsObjectSchemaInfo;->a(J[J[J)V

    .line 46
    .line 47
    .line 48
    sput-object v3, Lio/realm/s2;->c:Lio/realm/internal/OsObjectSchemaInfo;

    .line 49
    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/NewestServiceModelRealm;-><init>()V

    iget-object v0, p0, Lio/realm/s2;->b:Lio/realm/f0;

    invoke-virtual {v0}, Lio/realm/f0;->c()V

    return-void
.end method

.method public static c(Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/data/service/NewestServiceModelRealm;Ljava/util/HashMap;)J
    .locals 12

    .line 1
    instance-of v0, p1, Lio/realm/internal/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    check-cast v0, Lio/realm/internal/n;

    .line 13
    .line 14
    invoke-interface {v0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v1, v1, Lio/realm/f0;->e:Lio/realm/a;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v1, v1, Lio/realm/f0;->e:Lio/realm/a;

    .line 27
    .line 28
    iget-object v1, v1, Lio/realm/a;->c:Lio/realm/o0;

    .line 29
    .line 30
    iget-object v1, v1, Lio/realm/o0;->c:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v2, p0, Lio/realm/a;->c:Lio/realm/o0;

    .line 33
    .line 34
    iget-object v2, v2, Lio/realm/o0;->c:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    invoke-interface {v0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    iget-object p0, p0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 47
    .line 48
    invoke-interface {p0}, Lio/realm/internal/p;->Y()J

    .line 49
    .line 50
    .line 51
    move-result-wide p0

    .line 52
    return-wide p0

    .line 53
    :cond_0
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/service/NewestServiceModelRealm;

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget-wide v8, v1, Lio/realm/internal/Table;->a:J

    .line 60
    .line 61
    iget-object p0, p0, Lio/realm/g0;->j:Lio/realm/u;

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    check-cast p0, Lio/realm/s2$a;

    .line 68
    .line 69
    iget-wide v10, p0, Lio/realm/s2$a;->e:J

    .line 70
    .line 71
    invoke-interface {p1}, Lio/realm/t2;->realmGet$serviceCode()Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-nez v0, :cond_1

    .line 76
    .line 77
    invoke-static {v8, v9, v10, v11}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    .line 78
    .line 79
    .line 80
    move-result-wide v2

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    invoke-interface {p1}, Lio/realm/t2;->realmGet$serviceCode()Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    int-to-long v6, v0

    .line 91
    move-wide v2, v8

    .line 92
    move-wide v4, v10

    .line 93
    invoke-static/range {v2 .. v7}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    .line 94
    .line 95
    .line 96
    move-result-wide v2

    .line 97
    :goto_0
    const-wide/16 v4, -0x1

    .line 98
    .line 99
    cmp-long v0, v2, v4

    .line 100
    .line 101
    if-nez v0, :cond_2

    .line 102
    .line 103
    invoke-interface {p1}, Lio/realm/t2;->realmGet$serviceCode()Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v1, v10, v11, v0}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    .line 108
    .line 109
    .line 110
    move-result-wide v2

    .line 111
    :cond_2
    move-wide v0, v2

    .line 112
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {p2, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    invoke-interface {p1}, Lio/realm/t2;->realmGet$serviceInsertion()Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iget-wide v4, p0, Lio/realm/s2$a;->f:J

    .line 124
    .line 125
    if-eqz p1, :cond_3

    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 128
    .line 129
    .line 130
    move-result-wide p0

    .line 131
    const/4 v10, 0x0

    .line 132
    move-wide v2, v8

    .line 133
    move-wide v6, v0

    .line 134
    move-wide v8, p0

    .line 135
    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_3
    const/4 p0, 0x0

    .line 140
    move-wide v2, v8

    .line 141
    move-wide v6, v0

    .line 142
    move v8, p0

    .line 143
    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 144
    .line 145
    .line 146
    :goto_1
    return-wide v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/s2;->b:Lio/realm/f0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lio/realm/a;->h:Lio/realm/a$c;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lio/realm/a$b;

    .line 13
    .line 14
    iget-object v1, v0, Lio/realm/a$b;->c:Lio/realm/internal/c;

    .line 15
    .line 16
    check-cast v1, Lio/realm/s2$a;

    .line 17
    .line 18
    iput-object v1, p0, Lio/realm/s2;->a:Lio/realm/s2$a;

    .line 19
    .line 20
    new-instance v1, Lio/realm/f0;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lio/realm/f0;-><init>(Lio/realm/s0;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lio/realm/s2;->b:Lio/realm/f0;

    .line 26
    .line 27
    iget-object v2, v0, Lio/realm/a$b;->a:Lio/realm/a;

    .line 28
    .line 29
    iput-object v2, v1, Lio/realm/f0;->e:Lio/realm/a;

    .line 30
    .line 31
    iget-object v2, v0, Lio/realm/a$b;->b:Lio/realm/internal/p;

    .line 32
    .line 33
    iput-object v2, v1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 34
    .line 35
    iget-boolean v2, v0, Lio/realm/a$b;->d:Z

    .line 36
    .line 37
    iput-boolean v2, v1, Lio/realm/f0;->f:Z

    .line 38
    .line 39
    iget-object v0, v0, Lio/realm/a$b;->e:Ljava/util/List;

    .line 40
    .line 41
    iput-object v0, v1, Lio/realm/f0;->g:Ljava/util/List;

    .line 42
    .line 43
    return-void
.end method

.method public final b()Lio/realm/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/f0<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/s2;->b:Lio/realm/f0;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_9

    .line 7
    .line 8
    const-class v2, Lio/realm/s2;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lio/realm/s2;

    .line 19
    .line 20
    iget-object v2, p0, Lio/realm/s2;->b:Lio/realm/f0;

    .line 21
    .line 22
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    .line 23
    .line 24
    iget-object v3, p1, Lio/realm/s2;->b:Lio/realm/f0;

    .line 25
    .line 26
    iget-object v3, v3, Lio/realm/f0;->e:Lio/realm/a;

    .line 27
    .line 28
    iget-object v4, v2, Lio/realm/a;->c:Lio/realm/o0;

    .line 29
    .line 30
    iget-object v4, v4, Lio/realm/o0;->c:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v5, v3, Lio/realm/a;->c:Lio/realm/o0;

    .line 33
    .line 34
    iget-object v5, v5, Lio/realm/o0;->c:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_3

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    if-eqz v5, :cond_3

    .line 46
    .line 47
    :goto_0
    return v1

    .line 48
    :cond_3
    invoke-virtual {v2}, Lio/realm/a;->j()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    invoke-virtual {v3}, Lio/realm/a;->j()Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eq v4, v5, :cond_4

    .line 57
    .line 58
    return v1

    .line 59
    :cond_4
    iget-object v2, v2, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 60
    .line 61
    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/OsSharedRealm$a;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iget-object v3, v3, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 66
    .line 67
    invoke-virtual {v3}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/OsSharedRealm$a;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v2, v3}, Lio/realm/internal/OsSharedRealm$a;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_5

    .line 76
    .line 77
    return v1

    .line 78
    :cond_5
    iget-object v2, p0, Lio/realm/s2;->b:Lio/realm/f0;

    .line 79
    .line 80
    iget-object v2, v2, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 81
    .line 82
    invoke-interface {v2}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v2}, Lio/realm/internal/Table;->m()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    iget-object v3, p1, Lio/realm/s2;->b:Lio/realm/f0;

    .line 91
    .line 92
    iget-object v3, v3, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 93
    .line 94
    invoke-interface {v3}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v3}, Lio/realm/internal/Table;->m()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    if-eqz v2, :cond_6

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-nez v2, :cond_7

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_6
    if-eqz v3, :cond_7

    .line 112
    .line 113
    :goto_1
    return v1

    .line 114
    :cond_7
    iget-object v2, p0, Lio/realm/s2;->b:Lio/realm/f0;

    .line 115
    .line 116
    iget-object v2, v2, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 117
    .line 118
    invoke-interface {v2}, Lio/realm/internal/p;->Y()J

    .line 119
    .line 120
    .line 121
    move-result-wide v2

    .line 122
    iget-object p1, p1, Lio/realm/s2;->b:Lio/realm/f0;

    .line 123
    .line 124
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 125
    .line 126
    invoke-interface {p1}, Lio/realm/internal/p;->Y()J

    .line 127
    .line 128
    .line 129
    move-result-wide v4

    .line 130
    cmp-long p1, v2, v4

    .line 131
    .line 132
    if-eqz p1, :cond_8

    .line 133
    .line 134
    return v1

    .line 135
    :cond_8
    return v0

    .line 136
    :cond_9
    :goto_2
    return v1
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lio/realm/s2;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v1, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    iget-object v1, v1, Lio/realm/a;->c:Lio/realm/o0;

    .line 6
    .line 7
    iget-object v1, v1, Lio/realm/o0;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 10
    .line 11
    invoke-interface {v0}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lio/realm/internal/Table;->m()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v2, p0, Lio/realm/s2;->b:Lio/realm/f0;

    .line 20
    .line 21
    iget-object v2, v2, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 22
    .line 23
    invoke-interface {v2}, Lio/realm/internal/p;->Y()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    const/4 v4, 0x0

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 36
    :goto_0
    const/16 v5, 0x20f

    .line 37
    .line 38
    add-int/2addr v5, v1

    .line 39
    mul-int/lit8 v5, v5, 0x1f

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    :cond_1
    add-int/2addr v5, v4

    .line 48
    mul-int/lit8 v5, v5, 0x1f

    .line 49
    .line 50
    const/16 v0, 0x20

    .line 51
    .line 52
    ushr-long v0, v2, v0

    .line 53
    .line 54
    xor-long/2addr v0, v2

    .line 55
    long-to-int v1, v0

    .line 56
    add-int/2addr v5, v1

    .line 57
    return v5
.end method

.method public final realmGet$serviceCode()Ljava/lang/Integer;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/s2;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/s2;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/s2;->a:Lio/realm/s2$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/s2$a;->e:J

    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Lio/realm/internal/p;->C(J)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    return-object v0

    .line 24
    :cond_0
    iget-object v0, p0, Lio/realm/s2;->b:Lio/realm/f0;

    .line 25
    .line 26
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 27
    .line 28
    iget-object v1, p0, Lio/realm/s2;->a:Lio/realm/s2$a;

    .line 29
    .line 30
    iget-wide v1, v1, Lio/realm/s2$a;->e:J

    .line 31
    .line 32
    invoke-interface {v0, v1, v2}, Lio/realm/internal/p;->y(J)J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    long-to-int v1, v0

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method

.method public final realmGet$serviceInsertion()Ljava/lang/Integer;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/s2;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/realm/s2;->b:Lio/realm/f0;

    .line 9
    .line 10
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lio/realm/s2;->a:Lio/realm/s2$a;

    .line 13
    .line 14
    iget-wide v1, v1, Lio/realm/s2$a;->f:J

    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Lio/realm/internal/p;->C(J)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    return-object v0

    .line 24
    :cond_0
    iget-object v0, p0, Lio/realm/s2;->b:Lio/realm/f0;

    .line 25
    .line 26
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 27
    .line 28
    iget-object v1, p0, Lio/realm/s2;->a:Lio/realm/s2$a;

    .line 29
    .line 30
    iget-wide v1, v1, Lio/realm/s2$a;->f:J

    .line 31
    .line 32
    invoke-interface {v0, v1, v2}, Lio/realm/internal/p;->y(J)J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    long-to-int v1, v0

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method

.method public final realmSet$serviceCode(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/realm/s2;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-boolean v0, p1, Lio/realm/f0;->b:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p1, p1, Lio/realm/f0;->e:Lio/realm/a;

    .line 9
    .line 10
    invoke-virtual {p1}, Lio/realm/a;->b()V

    .line 11
    .line 12
    .line 13
    new-instance p1, Lio/realm/exceptions/RealmException;

    .line 14
    .line 15
    const-string v0, "Primary key field \'serviceCode\' cannot be changed after object was created."

    .line 16
    .line 17
    invoke-direct {p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1
.end method

.method public final realmSet$serviceInsertion(Ljava/lang/Integer;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lio/realm/s2;->b:Lio/realm/f0;

    .line 2
    .line 3
    iget-boolean v1, v0, Lio/realm/f0;->b:Z

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-boolean v1, v0, Lio/realm/f0;->f:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v1, p0, Lio/realm/s2;->a:Lio/realm/s2$a;

    .line 21
    .line 22
    iget-wide v1, v1, Lio/realm/s2$a;->f:J

    .line 23
    .line 24
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-virtual {p1, v1, v2, v3, v4}, Lio/realm/internal/Table;->w(JJ)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    iget-object v1, p0, Lio/realm/s2;->a:Lio/realm/s2$a;

    .line 37
    .line 38
    iget-wide v6, v1, Lio/realm/s2$a;->f:J

    .line 39
    .line 40
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 41
    .line 42
    .line 43
    move-result-wide v8

    .line 44
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    int-to-long v10, p1

    .line 49
    invoke-virtual/range {v5 .. v11}, Lio/realm/internal/Table;->v(JJJ)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 54
    .line 55
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lio/realm/s2;->b:Lio/realm/f0;

    .line 59
    .line 60
    if-nez p1, :cond_3

    .line 61
    .line 62
    iget-object p1, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 63
    .line 64
    iget-object v0, p0, Lio/realm/s2;->a:Lio/realm/s2$a;

    .line 65
    .line 66
    iget-wide v0, v0, Lio/realm/s2$a;->f:J

    .line 67
    .line 68
    invoke-interface {p1, v0, v1}, Lio/realm/internal/p;->M(J)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 73
    .line 74
    iget-object v1, p0, Lio/realm/s2;->a:Lio/realm/s2$a;

    .line 75
    .line 76
    iget-wide v1, v1, Lio/realm/s2$a;->f:J

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    int-to-long v3, p1

    .line 83
    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/p;->A(JJ)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lio/realm/v0;->isValid(Lio/realm/s0;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "Invalid object"

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "NewestServiceModelRealm = proxy[{serviceCode:"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lio/realm/s2;->realmGet$serviceCode()Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "null"

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lio/realm/s2;->realmGet$serviceCode()Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v1, v2

    .line 31
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, "},{serviceInsertion:"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lio/realm/s2;->realmGet$serviceInsertion()Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0}, Lio/realm/s2;->realmGet$serviceInsertion()Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    :cond_2
    const-string v1, "}]"

    .line 50
    .line 51
    invoke-static {v0, v2, v1}, Landroidx/camera/core/impl/a;->e(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
