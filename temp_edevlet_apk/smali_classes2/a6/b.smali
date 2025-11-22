.class public final La6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/HashSet;

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const-string v1, "_in"

    .line 4
    .line 5
    const-string v2, "_xa"

    .line 6
    .line 7
    const-string v3, "_xu"

    .line 8
    .line 9
    const-string v4, "_aq"

    .line 10
    .line 11
    const-string v5, "_aa"

    .line 12
    .line 13
    const-string v6, "_ai"

    .line 14
    .line 15
    const-string v7, "_ac"

    .line 16
    .line 17
    const-string v8, "campaign_details"

    .line 18
    .line 19
    const-string v9, "_ug"

    .line 20
    .line 21
    const-string v10, "_iapx"

    .line 22
    .line 23
    const-string v11, "_exp_set"

    .line 24
    .line 25
    const-string v12, "_exp_clear"

    .line 26
    .line 27
    const-string v13, "_exp_activate"

    .line 28
    .line 29
    const-string v14, "_exp_timeout"

    .line 30
    .line 31
    const-string v15, "_exp_expire"

    .line 32
    .line 33
    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, La6/b;->a:Ljava/util/HashSet;

    .line 45
    .line 46
    const-string v2, "_e"

    .line 47
    .line 48
    const-string v3, "_f"

    .line 49
    .line 50
    const-string v4, "_iap"

    .line 51
    .line 52
    const-string v5, "_s"

    .line 53
    .line 54
    const-string v6, "_au"

    .line 55
    .line 56
    const-string v7, "_ui"

    .line 57
    .line 58
    const-string v8, "_cd"

    .line 59
    .line 60
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sput-object v0, La6/b;->b:Ljava/util/List;

    .line 69
    .line 70
    const-string v0, "am"

    .line 71
    .line 72
    const-string v1, "auto"

    .line 73
    .line 74
    const-string v2, "app"

    .line 75
    .line 76
    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    sput-object v0, La6/b;->c:Ljava/util/List;

    .line 85
    .line 86
    const-string v0, "_r"

    .line 87
    .line 88
    const-string v1, "_dbg"

    .line 89
    .line 90
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    sput-object v0, La6/b;->d:Ljava/util/List;

    .line 99
    .line 100
    const/4 v0, 0x2

    .line 101
    new-array v1, v0, [[Ljava/lang/String;

    .line 102
    .line 103
    sget-object v2, Lc5/u;->b:[Ljava/lang/String;

    .line 104
    .line 105
    const/4 v3, 0x0

    .line 106
    aput-object v2, v1, v3

    .line 107
    .line 108
    sget-object v2, Lc5/u;->c:[Ljava/lang/String;

    .line 109
    .line 110
    const/4 v4, 0x1

    .line 111
    aput-object v2, v1, v4

    .line 112
    .line 113
    const/4 v2, 0x0

    .line 114
    const/4 v5, 0x0

    .line 115
    :goto_0
    if-ge v2, v0, :cond_0

    .line 116
    .line 117
    aget-object v6, v1, v2

    .line 118
    .line 119
    array-length v6, v6

    .line 120
    add-int/2addr v5, v6

    .line 121
    add-int/lit8 v2, v2, 0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_0
    aget-object v0, v1, v3

    .line 125
    .line 126
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    aget-object v2, v1, v3

    .line 131
    .line 132
    array-length v2, v2

    .line 133
    aget-object v1, v1, v4

    .line 134
    .line 135
    array-length v4, v1

    .line 136
    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    .line 138
    .line 139
    check-cast v0, [Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    sput-object v0, La6/b;->e:Ljava/util/List;

    .line 146
    .line 147
    const-string v0, "^_ltv_[A-Z]{3}$"

    .line 148
    .line 149
    const-string v1, "^_cc[1-5]{1}$"

    .line 150
    .line 151
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    sput-object v0, La6/b;->f:Ljava/util/List;

    .line 160
    .line 161
    return-void
.end method
