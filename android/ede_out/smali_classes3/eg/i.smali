.class public final Leg/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final accidentComment:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "accidentComment"
    .end annotation
.end field

.field private final consolidatedStatus:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "consolidatedStatus"
    .end annotation
.end field

.field private final createDate:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "createDate"
    .end annotation
.end field

.field private final dashPoint:Ljava/lang/Object;
    .annotation runtime Ll8/k;
        name = "dashPoint"
    .end annotation
.end field

.field private final driver:Leg/a;
    .annotation runtime Ll8/k;
        name = "driver"
    .end annotation
.end field

.field private final expireDate:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "expireDate"
    .end annotation
.end field

.field private final id:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "id"
    .end annotation
.end field

.field private final location:Leg/c;
    .annotation runtime Ll8/k;
        name = "location"
    .end annotation
.end field

.field private final media:Leg/d;
    .annotation runtime Ll8/k;
        name = "media"
    .end annotation
.end field

.field private final nameSurname:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "nameSurname"
    .end annotation
.end field

.field private final phoneNumber:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "phoneNumber"
    .end annotation
.end field

.field private final policies:Leg/q;
    .annotation runtime Ll8/k;
        name = "policies"
    .end annotation
.end field

.field private final questionAnswers:Leg/f;
    .annotation runtime Ll8/k;
        name = "questionAnswers"
    .end annotation
.end field

.field private final report:Leg/g;
    .annotation runtime Ll8/k;
        name = "report"
    .end annotation
.end field

.field private final role:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "role"
    .end annotation
.end field

.field private final status:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "status"
    .end annotation
.end field

.field private final updateDate:Ljava/lang/String;
    .annotation runtime Ll8/k;
        name = "updateDate"
    .end annotation
.end field

.field private final vehicle:Leg/x;
    .annotation runtime Ll8/k;
        name = "vehicle"
    .end annotation
.end field

.field private final witnesses:Leg/z;
    .annotation runtime Ll8/k;
        name = "witnesses"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Leg/a;Ljava/lang/String;Ljava/lang/String;Leg/c;Leg/d;Ljava/lang/String;Ljava/lang/String;Leg/q;Leg/f;Leg/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Leg/x;Leg/z;)V
    .locals 16
    .param p1    # Ljava/lang/String;
        .annotation runtime Ltr/gov/turkiye/edevlet/kapisi/mkt/data/SpecifiedTypeOrNull;
            token = .enum Ll8/u$b;->f:Ll8/u$b;
        .end annotation
    .end param
    .param p14    # Leg/g;
        .annotation runtime Ltr/gov/turkiye/edevlet/kapisi/mkt/data/SpecifiedTypeOrNull;
            token = .enum Ll8/u$b;->c:Ll8/u$b;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v11, p15

    move-object/from16 v12, p16

    move-object/from16 v13, p17

    move-object/from16 v14, p18

    move-object/from16 v15, p19

    const-string v0, "consolidatedStatus"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createDate"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "driver"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expireDate"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "media"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameSurname"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumber"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "policies"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "questionAnswers"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "role"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateDate"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vehicle"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "witnesses"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    iput-object v15, v0, Leg/i;->accidentComment:Ljava/lang/String;

    iput-object v1, v0, Leg/i;->consolidatedStatus:Ljava/lang/String;

    iput-object v2, v0, Leg/i;->createDate:Ljava/lang/String;

    move-object/from16 v1, p4

    iput-object v1, v0, Leg/i;->dashPoint:Ljava/lang/Object;

    iput-object v3, v0, Leg/i;->driver:Leg/a;

    iput-object v4, v0, Leg/i;->expireDate:Ljava/lang/String;

    iput-object v5, v0, Leg/i;->id:Ljava/lang/String;

    move-object/from16 v1, p8

    iput-object v1, v0, Leg/i;->location:Leg/c;

    iput-object v6, v0, Leg/i;->media:Leg/d;

    iput-object v7, v0, Leg/i;->nameSurname:Ljava/lang/String;

    iput-object v8, v0, Leg/i;->phoneNumber:Ljava/lang/String;

    iput-object v9, v0, Leg/i;->policies:Leg/q;

    iput-object v10, v0, Leg/i;->questionAnswers:Leg/f;

    move-object/from16 v1, p14

    iput-object v1, v0, Leg/i;->report:Leg/g;

    iput-object v11, v0, Leg/i;->role:Ljava/lang/String;

    iput-object v12, v0, Leg/i;->status:Ljava/lang/String;

    iput-object v13, v0, Leg/i;->updateDate:Ljava/lang/String;

    iput-object v14, v0, Leg/i;->vehicle:Leg/x;

    move-object/from16 v1, p19

    iput-object v1, v0, Leg/i;->witnesses:Leg/z;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leg/i;->accidentComment:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leg/i;->consolidatedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leg/i;->createDate:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leg/i;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Leg/c;
    .locals 1

    iget-object v0, p0, Leg/i;->location:Leg/c;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Leg/i;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Leg/i;

    iget-object v1, p0, Leg/i;->accidentComment:Ljava/lang/String;

    iget-object v3, p1, Leg/i;->accidentComment:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Leg/i;->consolidatedStatus:Ljava/lang/String;

    iget-object v3, p1, Leg/i;->consolidatedStatus:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Leg/i;->createDate:Ljava/lang/String;

    iget-object v3, p1, Leg/i;->createDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Leg/i;->dashPoint:Ljava/lang/Object;

    iget-object v3, p1, Leg/i;->dashPoint:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Leg/i;->driver:Leg/a;

    iget-object v3, p1, Leg/i;->driver:Leg/a;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Leg/i;->expireDate:Ljava/lang/String;

    iget-object v3, p1, Leg/i;->expireDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Leg/i;->id:Ljava/lang/String;

    iget-object v3, p1, Leg/i;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Leg/i;->location:Leg/c;

    iget-object v3, p1, Leg/i;->location:Leg/c;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Leg/i;->media:Leg/d;

    iget-object v3, p1, Leg/i;->media:Leg/d;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Leg/i;->nameSurname:Ljava/lang/String;

    iget-object v3, p1, Leg/i;->nameSurname:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Leg/i;->phoneNumber:Ljava/lang/String;

    iget-object v3, p1, Leg/i;->phoneNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Leg/i;->policies:Leg/q;

    iget-object v3, p1, Leg/i;->policies:Leg/q;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Leg/i;->questionAnswers:Leg/f;

    iget-object v3, p1, Leg/i;->questionAnswers:Leg/f;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Leg/i;->report:Leg/g;

    iget-object v3, p1, Leg/i;->report:Leg/g;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Leg/i;->role:Ljava/lang/String;

    iget-object v3, p1, Leg/i;->role:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Leg/i;->status:Ljava/lang/String;

    iget-object v3, p1, Leg/i;->status:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Leg/i;->updateDate:Ljava/lang/String;

    iget-object v3, p1, Leg/i;->updateDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Leg/i;->vehicle:Leg/x;

    iget-object v3, p1, Leg/i;->vehicle:Leg/x;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Leg/i;->witnesses:Leg/z;

    iget-object p1, p1, Leg/i;->witnesses:Leg/z;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    return v2

    :cond_14
    return v0
.end method

.method public final f()Leg/g;
    .locals 1

    iget-object v0, p0, Leg/i;->report:Leg/g;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leg/i;->role:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leg/i;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Leg/i;->accidentComment:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Leg/i;->consolidatedStatus:Ljava/lang/String;

    .line 15
    .line 16
    const/16 v3, 0x1f

    .line 17
    .line 18
    invoke-static {v2, v0, v3}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Leg/i;->createDate:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v2, v0, v3}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v2, p0, Leg/i;->dashPoint:Ljava/lang/Object;

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    :goto_1
    add-int/2addr v0, v2

    .line 39
    mul-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    iget-object v2, p0, Leg/i;->driver:Leg/a;

    .line 42
    .line 43
    invoke-virtual {v2}, Leg/a;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    add-int/2addr v2, v0

    .line 48
    mul-int/lit8 v2, v2, 0x1f

    .line 49
    .line 50
    iget-object v0, p0, Leg/i;->expireDate:Ljava/lang/String;

    .line 51
    .line 52
    const/16 v3, 0x1f

    .line 53
    .line 54
    invoke-static {v0, v2, v3}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iget-object v2, p0, Leg/i;->id:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v2, v0, v3}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iget-object v2, p0, Leg/i;->location:Leg/c;

    .line 65
    .line 66
    if-nez v2, :cond_2

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    invoke-virtual {v2}, Leg/c;->hashCode()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    :goto_2
    add-int/2addr v0, v2

    .line 75
    mul-int/lit8 v0, v0, 0x1f

    .line 76
    .line 77
    iget-object v2, p0, Leg/i;->media:Leg/d;

    .line 78
    .line 79
    invoke-virtual {v2}, Leg/d;->hashCode()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    add-int/2addr v2, v0

    .line 84
    mul-int/lit8 v2, v2, 0x1f

    .line 85
    .line 86
    iget-object v0, p0, Leg/i;->nameSurname:Ljava/lang/String;

    .line 87
    .line 88
    const/16 v3, 0x1f

    .line 89
    .line 90
    invoke-static {v0, v2, v3}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iget-object v2, p0, Leg/i;->phoneNumber:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v2, v0, v3}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    iget-object v2, p0, Leg/i;->policies:Leg/q;

    .line 101
    .line 102
    invoke-virtual {v2}, Leg/q;->hashCode()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    add-int/2addr v2, v0

    .line 107
    mul-int/lit8 v2, v2, 0x1f

    .line 108
    .line 109
    iget-object v0, p0, Leg/i;->questionAnswers:Leg/f;

    .line 110
    .line 111
    invoke-virtual {v0}, Leg/f;->hashCode()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    add-int/2addr v0, v2

    .line 116
    mul-int/lit8 v0, v0, 0x1f

    .line 117
    .line 118
    iget-object v2, p0, Leg/i;->report:Leg/g;

    .line 119
    .line 120
    if-nez v2, :cond_3

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_3
    invoke-virtual {v2}, Leg/g;->hashCode()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    :goto_3
    add-int/2addr v0, v1

    .line 128
    mul-int/lit8 v0, v0, 0x1f

    .line 129
    .line 130
    iget-object v1, p0, Leg/i;->role:Ljava/lang/String;

    .line 131
    .line 132
    const/16 v2, 0x1f

    .line 133
    .line 134
    invoke-static {v1, v0, v2}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    iget-object v1, p0, Leg/i;->status:Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {v1, v0, v2}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    iget-object v1, p0, Leg/i;->updateDate:Ljava/lang/String;

    .line 145
    .line 146
    invoke-static {v1, v0, v2}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    iget-object v1, p0, Leg/i;->vehicle:Leg/x;

    .line 151
    .line 152
    invoke-virtual {v1}, Leg/x;->hashCode()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    add-int/2addr v1, v0

    .line 157
    mul-int/lit8 v1, v1, 0x1f

    .line 158
    .line 159
    iget-object v0, p0, Leg/i;->witnesses:Leg/z;

    .line 160
    .line 161
    invoke-virtual {v0}, Leg/z;->hashCode()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    add-int/2addr v0, v1

    .line 166
    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leg/i;->updateDate:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Leg/x;
    .locals 1

    iget-object v0, p0, Leg/i;->vehicle:Leg/x;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReportDetailMainInfo(accidentComment="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Leg/i;->accidentComment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", consolidatedStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leg/i;->consolidatedStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leg/i;->createDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dashPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leg/i;->dashPoint:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", driver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leg/i;->driver:Leg/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expireDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leg/i;->expireDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leg/i;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leg/i;->location:Leg/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", media="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leg/i;->media:Leg/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nameSurname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leg/i;->nameSurname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leg/i;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", policies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leg/i;->policies:Leg/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", questionAnswers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leg/i;->questionAnswers:Leg/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", report="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leg/i;->report:Leg/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", role="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leg/i;->role:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leg/i;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updateDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leg/i;->updateDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", vehicle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leg/i;->vehicle:Leg/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", witnesses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leg/i;->witnesses:Leg/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
