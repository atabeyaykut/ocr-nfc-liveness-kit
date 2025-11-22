.class public final Lio/realm/p;
.super Lio/realm/v0;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/n;


# instance fields
.field public final a:Lio/realm/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/f0<",
            "Lio/realm/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/realm/a;Lio/realm/internal/p;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/realm/v0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/realm/f0;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lio/realm/f0;-><init>(Lio/realm/s0;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/realm/p;->a:Lio/realm/f0;

    .line 10
    .line 11
    iput-object p1, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 12
    .line 13
    iput-object p2, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 14
    .line 15
    invoke-virtual {v0}, Lio/realm/f0;->c()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()Lio/realm/f0;
    .locals 1

    iget-object v0, p0, Lio/realm/p;->a:Lio/realm/f0;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lio/realm/p;->a:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v1, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v1}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne p0, p1, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    if-eqz p1, :cond_7

    .line 14
    .line 15
    const-class v3, Lio/realm/p;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    if-eq v3, v4, :cond_1

    .line 22
    .line 23
    goto :goto_3

    .line 24
    :cond_1
    check-cast p1, Lio/realm/p;

    .line 25
    .line 26
    iget-object v3, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 27
    .line 28
    iget-object v3, v3, Lio/realm/a;->c:Lio/realm/o0;

    .line 29
    .line 30
    iget-object v3, v3, Lio/realm/o0;->c:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v4, p1, Lio/realm/p;->a:Lio/realm/f0;

    .line 33
    .line 34
    iget-object v4, v4, Lio/realm/f0;->e:Lio/realm/a;

    .line 35
    .line 36
    iget-object v4, v4, Lio/realm/a;->c:Lio/realm/o0;

    .line 37
    .line 38
    iget-object v4, v4, Lio/realm/o0;->c:Ljava/lang/String;

    .line 39
    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    if-eqz v4, :cond_3

    .line 50
    .line 51
    :goto_0
    return v2

    .line 52
    :cond_3
    iget-object v3, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 53
    .line 54
    invoke-interface {v3}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Lio/realm/internal/Table;->m()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iget-object p1, p1, Lio/realm/p;->a:Lio/realm/f0;

    .line 63
    .line 64
    iget-object v4, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 65
    .line 66
    invoke-interface {v4}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v4}, Lio/realm/internal/Table;->m()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    if-eqz v3, :cond_4

    .line 75
    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-nez v3, :cond_5

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    if-eqz v4, :cond_5

    .line 84
    .line 85
    :goto_1
    return v2

    .line 86
    :cond_5
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 87
    .line 88
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 89
    .line 90
    .line 91
    move-result-wide v3

    .line 92
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 93
    .line 94
    invoke-interface {p1}, Lio/realm/internal/p;->Y()J

    .line 95
    .line 96
    .line 97
    move-result-wide v5

    .line 98
    cmp-long p1, v3, v5

    .line 99
    .line 100
    if-nez p1, :cond_6

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_6
    const/4 v1, 0x0

    .line 104
    :goto_2
    return v1

    .line 105
    :cond_7
    :goto_3
    return v2
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lio/realm/p;->a:Lio/realm/f0;

    .line 2
    .line 3
    iget-object v1, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 4
    .line 5
    invoke-virtual {v1}, Lio/realm/a;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 9
    .line 10
    iget-object v1, v1, Lio/realm/a;->c:Lio/realm/o0;

    .line 11
    .line 12
    iget-object v1, v1, Lio/realm/o0;->c:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v2, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 15
    .line 16
    invoke-interface {v2}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lio/realm/internal/Table;->m()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 25
    .line 26
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    const/4 v0, 0x0

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v1, 0x0

    .line 39
    :goto_0
    const/16 v5, 0x20f

    .line 40
    .line 41
    add-int/2addr v5, v1

    .line 42
    mul-int/lit8 v5, v5, 0x1f

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    :cond_1
    add-int/2addr v5, v0

    .line 51
    mul-int/lit8 v5, v5, 0x1f

    .line 52
    .line 53
    const/16 v0, 0x20

    .line 54
    .line 55
    ushr-long v0, v3, v0

    .line 56
    .line 57
    xor-long/2addr v0, v3

    .line 58
    long-to-int v1, v0

    .line 59
    add-int/2addr v5, v1

    .line 60
    return v5
.end method

.method public final toString()Ljava/lang/String;
    .locals 13

    .line 1
    iget-object v0, p0, Lio/realm/p;->a:Lio/realm/f0;

    iget-object v1, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 2
    invoke-virtual {v1}, Lio/realm/a;->b()V

    .line 3
    iget-object v1, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 4
    invoke-interface {v1}, Lio/realm/internal/p;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "Invalid object"

    return-object v0

    .line 5
    :cond_0
    iget-object v1, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 6
    invoke-interface {v1}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " = dynamic["

    .line 7
    invoke-static {v1, v3}, Landroid/support/v4/media/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 10
    invoke-virtual {v1}, Lio/realm/a;->b()V

    .line 11
    iget-object v1, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 12
    invoke-interface {v1}, Lio/realm/internal/p;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 13
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_b

    aget-object v7, v1, v5

    .line 14
    iget-object v8, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 15
    invoke-interface {v8, v7}, Lio/realm/internal/p;->G(Ljava/lang/String;)J

    move-result-wide v8

    .line 16
    iget-object v10, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 17
    invoke-interface {v10, v8, v9}, Lio/realm/internal/p;->V(J)Lio/realm/RealmFieldType;

    move-result-object v10

    const-string v11, "{"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lio/realm/p$a;->a:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v7, v7, v11

    const/4 v11, 0x2

    const-string v12, "null"

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    const-string v6, "?"

    goto/16 :goto_3

    :pswitch_1
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 18
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 19
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->S(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsList;->W()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmList<RealmAny>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_2
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 20
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 21
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->S(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsList;->W()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmList<UUID>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_3
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 22
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 23
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->S(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsList;->W()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmList<ObjectId>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_4
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 24
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 25
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->S(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsList;->W()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmList<Decimal128>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_5
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 26
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 27
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->S(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsList;->W()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmList<Double>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_6
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 28
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 29
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->S(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsList;->W()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmList<Float>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_7
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 30
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 31
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->S(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsList;->W()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmList<Date>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_8
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 32
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 33
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->S(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsList;->W()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmList<byte[]>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_9
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 34
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 35
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->S(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsList;->W()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmList<String>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_a
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 36
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 37
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->S(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsList;->W()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmList<Boolean>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_b
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 38
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 39
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->S(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsList;->W()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmList<Long>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_c
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 40
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 41
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->J(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsSet;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmSet<RealmAny>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 42
    :pswitch_d
    iget-object v7, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 43
    invoke-interface {v7}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Lio/realm/internal/Table;->l(J)Lio/realm/internal/Table;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/Table;->f()Ljava/lang/String;

    move-result-object v7

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v7, v11, v4

    .line 44
    iget-object v7, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 45
    invoke-interface {v7, v8, v9}, Lio/realm/internal/p;->u(J)Lio/realm/internal/OsSet;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsSet;->a()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v11, v6

    const-string v6, "RealmSet<%s>[%s]"

    invoke-static {v10, v6, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_e
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 46
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 47
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->J(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsSet;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmSet<UUID>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_f
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 48
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 49
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->J(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsSet;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmSet<ObjectId>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_10
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 50
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 51
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->J(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsSet;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmSet<Decimal128>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_11
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 52
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 53
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->J(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsSet;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmSet<Double>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_12
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 54
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 55
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->J(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsSet;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmSet<Float>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_13
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 56
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 57
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->J(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsSet;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmSet<Date>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_14
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 58
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 59
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->J(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsSet;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmSet<byte[]>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_15
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 60
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 61
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->J(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsSet;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmSet<String>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_16
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 62
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 63
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->J(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsSet;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmSet<Boolean>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_17
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 64
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 65
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->J(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsSet;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmSet<Long>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 66
    :pswitch_18
    iget-object v7, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 67
    invoke-interface {v7}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Lio/realm/internal/Table;->l(J)Lio/realm/internal/Table;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/Table;->f()Ljava/lang/String;

    move-result-object v7

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v7, v11, v4

    .line 68
    iget-object v7, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 69
    invoke-interface {v7, v8, v9}, Lio/realm/internal/p;->H(J)Lio/realm/internal/OsMap;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsMap;->a()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v11, v6

    const-string v6, "RealmDictionary<%s>[%s]"

    invoke-static {v10, v6, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_19
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 70
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 71
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->T(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsMap;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmDictionary<RealmAny>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_1a
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 72
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 73
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->T(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsMap;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmDictionary<UUID>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_1b
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 74
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 75
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->T(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsMap;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmDictionary<ObjectId>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_1c
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 76
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 77
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->T(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsMap;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmDictionary<Decimal128>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_1d
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 78
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 79
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->T(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsMap;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmDictionary<Double>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_1e
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 80
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 81
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->T(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsMap;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmDictionary<Float>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_1f
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 82
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 83
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->T(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsMap;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmDictionary<Date>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_20
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 84
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 85
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->T(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsMap;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmDictionary<byte[]>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_21
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 86
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 87
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->T(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsMap;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmDictionary<String>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_22
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 88
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 89
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->T(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsMap;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmDictionary<Boolean>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :pswitch_23
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 90
    iget-object v11, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 91
    invoke-interface {v11, v8, v9, v10}, Lio/realm/internal/p;->T(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/internal/OsMap;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "RealmDictionary<Long>[%s]"

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 92
    :pswitch_24
    iget-object v7, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 93
    invoke-interface {v7}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Lio/realm/internal/Table;->l(J)Lio/realm/internal/Table;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/Table;->f()Ljava/lang/String;

    move-result-object v7

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v7, v11, v4

    .line 94
    iget-object v7, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 95
    invoke-interface {v7, v8, v9}, Lio/realm/internal/p;->z(J)Lio/realm/internal/OsList;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsList;->W()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v11, v6

    const-string v6, "RealmList<%s>[%s]"

    invoke-static {v10, v6, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 96
    :pswitch_25
    iget-object v6, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 97
    invoke-interface {v6, v8, v9}, Lio/realm/internal/p;->L(J)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 98
    :cond_1
    iget-object v6, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 99
    invoke-interface {v6}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Lio/realm/internal/Table;->l(J)Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/Table;->f()Ljava/lang/String;

    move-result-object v12

    :goto_1
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 100
    :pswitch_26
    iget-object v6, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 101
    invoke-interface {v6, v8, v9}, Lio/realm/internal/p;->C(J)Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_2

    .line 102
    :cond_2
    iget-object v6, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 103
    invoke-interface {v6, v8, v9}, Lio/realm/internal/p;->w(J)Ljava/util/UUID;

    move-result-object v12

    goto/16 :goto_2

    .line 104
    :pswitch_27
    iget-object v6, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 105
    invoke-interface {v6, v8, v9}, Lio/realm/internal/p;->C(J)Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_2

    .line 106
    :cond_3
    iget-object v6, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 107
    invoke-interface {v6, v8, v9}, Lio/realm/internal/p;->K(J)Lio/realm/internal/core/NativeRealmAny;

    move-result-object v6

    new-instance v12, Lio/realm/h0;

    .line 108
    iget-object v7, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 109
    invoke-static {v7, v6}, Lio/realm/k0;->b(Lio/realm/a;Lio/realm/internal/core/NativeRealmAny;)Lio/realm/k0;

    move-result-object v6

    invoke-direct {v12, v6}, Lio/realm/h0;-><init>(Lio/realm/k0;)V

    goto/16 :goto_2

    .line 110
    :pswitch_28
    iget-object v6, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 111
    invoke-interface {v6, v8, v9}, Lio/realm/internal/p;->C(J)Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_2

    .line 112
    :cond_4
    iget-object v6, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 113
    invoke-interface {v6, v8, v9}, Lio/realm/internal/p;->v(J)Lorg/bson/types/ObjectId;

    move-result-object v12

    goto/16 :goto_2

    .line 114
    :pswitch_29
    iget-object v6, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 115
    invoke-interface {v6, v8, v9}, Lio/realm/internal/p;->C(J)Z

    move-result v6

    if-eqz v6, :cond_5

    goto/16 :goto_2

    .line 116
    :cond_5
    iget-object v6, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 117
    invoke-interface {v6, v8, v9}, Lio/realm/internal/p;->n(J)Lorg/bson/types/Decimal128;

    move-result-object v12

    goto/16 :goto_2

    .line 118
    :pswitch_2a
    iget-object v6, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 119
    invoke-interface {v6, v8, v9}, Lio/realm/internal/p;->C(J)Z

    move-result v6

    if-eqz v6, :cond_6

    goto/16 :goto_2

    .line 120
    :cond_6
    iget-object v6, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 121
    invoke-interface {v6, v8, v9}, Lio/realm/internal/p;->B(J)Ljava/util/Date;

    move-result-object v12

    goto :goto_2

    .line 122
    :pswitch_2b
    iget-object v6, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 123
    invoke-interface {v6, v8, v9}, Lio/realm/internal/p;->N(J)[B

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 124
    :pswitch_2c
    iget-object v6, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 125
    invoke-interface {v6, v8, v9}, Lio/realm/internal/p;->R(J)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 126
    :pswitch_2d
    iget-object v6, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 127
    invoke-interface {v6, v8, v9}, Lio/realm/internal/p;->C(J)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    .line 128
    :cond_7
    iget-object v6, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 129
    invoke-interface {v6, v8, v9}, Lio/realm/internal/p;->O(J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    goto :goto_2

    .line 130
    :pswitch_2e
    iget-object v6, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 131
    invoke-interface {v6, v8, v9}, Lio/realm/internal/p;->C(J)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_2

    .line 132
    :cond_8
    iget-object v6, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 133
    invoke-interface {v6, v8, v9}, Lio/realm/internal/p;->Q(J)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    goto :goto_2

    .line 134
    :pswitch_2f
    iget-object v6, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 135
    invoke-interface {v6, v8, v9}, Lio/realm/internal/p;->C(J)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_2

    .line 136
    :cond_9
    iget-object v6, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 137
    invoke-interface {v6, v8, v9}, Lio/realm/internal/p;->y(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    goto :goto_2

    .line 138
    :pswitch_30
    iget-object v6, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 139
    invoke-interface {v6, v8, v9}, Lio/realm/internal/p;->C(J)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_2

    .line 140
    :cond_a
    iget-object v6, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 141
    invoke-interface {v6, v8, v9}, Lio/realm/internal/p;->x(J)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    :goto_2
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    :goto_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const-string v6, "},"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-string v3, ""

    invoke-virtual {v2, v0, v1, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
