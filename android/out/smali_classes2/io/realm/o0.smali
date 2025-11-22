.class public final Lio/realm/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/o0$a;
    }
.end annotation


# static fields
.field public static final r:Ljava/lang/Object;

.field public static final s:Lio/realm/internal/o;


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:[B

.field public final f:J

.field public final g:Z

.field public final h:I

.field public final i:Lio/realm/internal/o;

.field public final j:Lj9/c;

.field public final k:Lio/realm/g0$a;

.field public final l:Z

.field public final m:Lio/realm/CompactOnLaunchCallback;

.field public final n:J

.field public final o:Z

.field public final p:Z

.field public final q:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Lio/realm/g0;->k:Ljava/lang/Object;

    .line 2
    .line 3
    const-string v0, "Could not create an instance of io.realm.DefaultRealmModule"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    const-class v2, Lio/realm/DefaultRealmModule;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    aget-object v2, v2, v3

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-virtual {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 17
    .line 18
    .line 19
    new-array v3, v3, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v1

    .line 27
    new-instance v2, Lio/realm/exceptions/RealmException;

    .line 28
    .line 29
    invoke-direct {v2, v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    throw v2

    .line 33
    :catch_1
    move-exception v1

    .line 34
    new-instance v2, Lio/realm/exceptions/RealmException;

    .line 35
    .line 36
    invoke-direct {v2, v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    throw v2

    .line 40
    :catch_2
    move-exception v1

    .line 41
    new-instance v2, Lio/realm/exceptions/RealmException;

    .line 42
    .line 43
    invoke-direct {v2, v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw v2

    .line 47
    :catch_3
    move-object v0, v1

    .line 48
    :goto_0
    sput-object v0, Lio/realm/o0;->r:Ljava/lang/Object;

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Lio/realm/o0;->a(Ljava/lang/String;)Lio/realm/internal/o;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lio/realm/internal/o;->o()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_0

    .line 69
    .line 70
    sput-object v0, Lio/realm/o0;->s:Lio/realm/internal/o;

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    .line 74
    .line 75
    const-string v1, "RealmTransformer doesn\'t seem to be applied. Please update the project configuration to use the Realm Gradle plugin. See https://docs.mongodb.com/realm/sdk/android/install/#customize-dependecies-defined-by-the-realm-gradle-plugin"

    .line 76
    .line 77
    invoke-direct {v0, v1}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v0

    .line 81
    :cond_1
    sput-object v1, Lio/realm/o0;->s:Lio/realm/internal/o;

    .line 82
    .line 83
    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZILio/realm/internal/o;Lj9/c;JZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lio/realm/o0;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/realm/o0;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/realm/o0;->c:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lio/realm/o0;->d:Ljava/lang/String;

    iput-object p1, p0, Lio/realm/o0;->e:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/realm/o0;->f:J

    iput-boolean p2, p0, Lio/realm/o0;->g:Z

    iput p3, p0, Lio/realm/o0;->h:I

    iput-object p4, p0, Lio/realm/o0;->i:Lio/realm/internal/o;

    iput-object p5, p0, Lio/realm/o0;->j:Lj9/c;

    iput-object p1, p0, Lio/realm/o0;->k:Lio/realm/g0$a;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lio/realm/o0;->l:Z

    iput-object p1, p0, Lio/realm/o0;->m:Lio/realm/CompactOnLaunchCallback;

    iput-boolean p2, p0, Lio/realm/o0;->q:Z

    iput-wide p6, p0, Lio/realm/o0;->n:J

    iput-boolean p8, p0, Lio/realm/o0;->o:Z

    iput-boolean p9, p0, Lio/realm/o0;->p:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Lio/realm/internal/o;
    .locals 5

    .line 1
    const-string v0, "Could not create an instance of "

    .line 2
    .line 3
    const-string v1, "\\."

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    array-length v1, p0

    .line 10
    const/4 v2, 0x1

    .line 11
    sub-int/2addr v1, v2

    .line 12
    aget-object p0, p0, v1

    .line 13
    .line 14
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    new-array v3, v3, [Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    aput-object p0, v3, v4

    .line 21
    .line 22
    const-string p0, "Mediator"

    .line 23
    .line 24
    aput-object p0, v3, v2

    .line 25
    .line 26
    const-string p0, "io.realm.%s%s"

    .line 27
    .line 28
    invoke-static {v1, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    aget-object v1, v1, v4

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 43
    .line 44
    .line 45
    new-array v2, v4, [Ljava/lang/Object;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lio/realm/internal/o;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    return-object v1

    .line 54
    :catch_0
    move-exception v1

    .line 55
    new-instance v2, Lio/realm/exceptions/RealmException;

    .line 56
    .line 57
    invoke-static {v0, p0}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-direct {v2, p0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    throw v2

    .line 65
    :catch_1
    move-exception v1

    .line 66
    new-instance v2, Lio/realm/exceptions/RealmException;

    .line 67
    .line 68
    invoke-static {v0, p0}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-direct {v2, p0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    throw v2

    .line 76
    :catch_2
    move-exception v1

    .line 77
    new-instance v2, Lio/realm/exceptions/RealmException;

    .line 78
    .line 79
    invoke-static {v0, p0}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-direct {v2, p0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    throw v2

    .line 87
    :catch_3
    move-exception v0

    .line 88
    new-instance v1, Lio/realm/exceptions/RealmException;

    .line 89
    .line 90
    const-string v2, "Could not find "

    .line 91
    .line 92
    invoke-static {v2, p0}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-direct {v1, p0, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    throw v1
.end method


# virtual methods
.method public final b()Lj9/c;
    .locals 2

    iget-object v0, p0, Lio/realm/o0;->j:Lj9/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "RxJava seems to be missing from the classpath. Remember to add it as an implementation dependency. See https://github.com/realm/realm-java/tree/master/examples/rxJavaExample for more details."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

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
    if-eqz p1, :cond_17

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lio/realm/o0;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto/16 :goto_7

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lio/realm/o0;

    .line 19
    .line 20
    iget-wide v2, p0, Lio/realm/o0;->f:J

    .line 21
    .line 22
    iget-wide v4, p1, Lio/realm/o0;->f:J

    .line 23
    .line 24
    cmp-long v6, v2, v4

    .line 25
    .line 26
    if-eqz v6, :cond_2

    .line 27
    .line 28
    return v1

    .line 29
    :cond_2
    iget-boolean v2, p0, Lio/realm/o0;->g:Z

    .line 30
    .line 31
    iget-boolean v3, p1, Lio/realm/o0;->g:Z

    .line 32
    .line 33
    if-eq v2, v3, :cond_3

    .line 34
    .line 35
    return v1

    .line 36
    :cond_3
    iget-boolean v2, p0, Lio/realm/o0;->l:Z

    .line 37
    .line 38
    iget-boolean v3, p1, Lio/realm/o0;->l:Z

    .line 39
    .line 40
    if-eq v2, v3, :cond_4

    .line 41
    .line 42
    return v1

    .line 43
    :cond_4
    iget-boolean v2, p0, Lio/realm/o0;->q:Z

    .line 44
    .line 45
    iget-boolean v3, p1, Lio/realm/o0;->q:Z

    .line 46
    .line 47
    if-eq v2, v3, :cond_5

    .line 48
    .line 49
    return v1

    .line 50
    :cond_5
    iget-object v2, p1, Lio/realm/o0;->a:Ljava/io/File;

    .line 51
    .line 52
    iget-object v3, p0, Lio/realm/o0;->a:Ljava/io/File;

    .line 53
    .line 54
    if-eqz v3, :cond_6

    .line 55
    .line 56
    invoke-virtual {v3, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_7

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_6
    if-eqz v2, :cond_7

    .line 64
    .line 65
    :goto_0
    return v1

    .line 66
    :cond_7
    iget-object v2, p1, Lio/realm/o0;->b:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v3, p0, Lio/realm/o0;->b:Ljava/lang/String;

    .line 69
    .line 70
    if-eqz v3, :cond_8

    .line 71
    .line 72
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_9

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_8
    if-eqz v2, :cond_9

    .line 80
    .line 81
    :goto_1
    return v1

    .line 82
    :cond_9
    iget-object v2, p0, Lio/realm/o0;->c:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v3, p1, Lio/realm/o0;->c:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-nez v2, :cond_a

    .line 91
    .line 92
    return v1

    .line 93
    :cond_a
    iget-object v2, p1, Lio/realm/o0;->d:Ljava/lang/String;

    .line 94
    .line 95
    iget-object v3, p0, Lio/realm/o0;->d:Ljava/lang/String;

    .line 96
    .line 97
    if-eqz v3, :cond_b

    .line 98
    .line 99
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-nez v2, :cond_c

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_b
    if-eqz v2, :cond_c

    .line 107
    .line 108
    :goto_2
    return v1

    .line 109
    :cond_c
    iget-object v2, p0, Lio/realm/o0;->e:[B

    .line 110
    .line 111
    iget-object v3, p1, Lio/realm/o0;->e:[B

    .line 112
    .line 113
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-nez v2, :cond_d

    .line 118
    .line 119
    return v1

    .line 120
    :cond_d
    iget v2, p0, Lio/realm/o0;->h:I

    .line 121
    .line 122
    iget v3, p1, Lio/realm/o0;->h:I

    .line 123
    .line 124
    if-eq v2, v3, :cond_e

    .line 125
    .line 126
    return v1

    .line 127
    :cond_e
    iget-object v2, p0, Lio/realm/o0;->i:Lio/realm/internal/o;

    .line 128
    .line 129
    iget-object v3, p1, Lio/realm/o0;->i:Lio/realm/internal/o;

    .line 130
    .line 131
    invoke-virtual {v2, v3}, Lio/realm/internal/o;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-nez v2, :cond_f

    .line 136
    .line 137
    return v1

    .line 138
    :cond_f
    iget-object v2, p0, Lio/realm/o0;->j:Lj9/c;

    .line 139
    .line 140
    iget-object v3, p1, Lio/realm/o0;->j:Lj9/c;

    .line 141
    .line 142
    if-eqz v2, :cond_10

    .line 143
    .line 144
    instance-of v2, v3, Lj9/b;

    .line 145
    .line 146
    if-nez v2, :cond_11

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_10
    if-eqz v3, :cond_11

    .line 150
    .line 151
    :goto_3
    return v1

    .line 152
    :cond_11
    iget-object v2, p1, Lio/realm/o0;->k:Lio/realm/g0$a;

    .line 153
    .line 154
    iget-object v3, p0, Lio/realm/o0;->k:Lio/realm/g0$a;

    .line 155
    .line 156
    if-eqz v3, :cond_12

    .line 157
    .line 158
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-nez v2, :cond_13

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_12
    if-eqz v2, :cond_13

    .line 166
    .line 167
    :goto_4
    return v1

    .line 168
    :cond_13
    iget-object v2, p1, Lio/realm/o0;->m:Lio/realm/CompactOnLaunchCallback;

    .line 169
    .line 170
    iget-object v3, p0, Lio/realm/o0;->m:Lio/realm/CompactOnLaunchCallback;

    .line 171
    .line 172
    if-eqz v3, :cond_14

    .line 173
    .line 174
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-nez v2, :cond_15

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_14
    if-eqz v2, :cond_15

    .line 182
    .line 183
    :goto_5
    return v1

    .line 184
    :cond_15
    iget-wide v2, p0, Lio/realm/o0;->n:J

    .line 185
    .line 186
    iget-wide v4, p1, Lio/realm/o0;->n:J

    .line 187
    .line 188
    cmp-long p1, v2, v4

    .line 189
    .line 190
    if-nez p1, :cond_16

    .line 191
    .line 192
    goto :goto_6

    .line 193
    :cond_16
    const/4 v0, 0x0

    .line 194
    :goto_6
    return v0

    .line 195
    :cond_17
    :goto_7
    return v1
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lio/realm/o0;->a:Ljava/io/File;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/io/File;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lio/realm/o0;->b:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 v2, 0x0

    .line 24
    :goto_1
    add-int/2addr v1, v2

    .line 25
    mul-int/lit8 v1, v1, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lio/realm/o0;->c:Ljava/lang/String;

    .line 28
    .line 29
    const/16 v3, 0x1f

    .line 30
    .line 31
    invoke-static {v2, v1, v3}, Landroidx/room/util/a;->a(Ljava/lang/String;II)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iget-object v2, p0, Lio/realm/o0;->d:Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    const/4 v2, 0x0

    .line 45
    :goto_2
    add-int/2addr v1, v2

    .line 46
    mul-int/lit8 v1, v1, 0x1f

    .line 47
    .line 48
    iget-object v2, p0, Lio/realm/o0;->e:[B

    .line 49
    .line 50
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    add-int/2addr v2, v1

    .line 55
    mul-int/lit8 v2, v2, 0x1f

    .line 56
    .line 57
    iget-wide v3, p0, Lio/realm/o0;->f:J

    .line 58
    .line 59
    const/16 v1, 0x20

    .line 60
    .line 61
    ushr-long v5, v3, v1

    .line 62
    .line 63
    xor-long/2addr v3, v5

    .line 64
    long-to-int v4, v3

    .line 65
    add-int/2addr v2, v4

    .line 66
    mul-int/lit8 v2, v2, 0x1f

    .line 67
    .line 68
    add-int/2addr v2, v0

    .line 69
    mul-int/lit8 v2, v2, 0x1f

    .line 70
    .line 71
    iget-boolean v3, p0, Lio/realm/o0;->g:Z

    .line 72
    .line 73
    add-int/2addr v2, v3

    .line 74
    mul-int/lit8 v2, v2, 0x1f

    .line 75
    .line 76
    iget v3, p0, Lio/realm/o0;->h:I

    .line 77
    .line 78
    invoke-static {v3}, Lg/d;->c(I)I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    add-int/2addr v3, v2

    .line 83
    mul-int/lit8 v3, v3, 0x1f

    .line 84
    .line 85
    iget-object v2, p0, Lio/realm/o0;->i:Lio/realm/internal/o;

    .line 86
    .line 87
    invoke-virtual {v2}, Lio/realm/internal/o;->hashCode()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    add-int/2addr v2, v3

    .line 92
    mul-int/lit8 v2, v2, 0x1f

    .line 93
    .line 94
    iget-object v3, p0, Lio/realm/o0;->j:Lj9/c;

    .line 95
    .line 96
    if-eqz v3, :cond_3

    .line 97
    .line 98
    const/16 v3, 0x25

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_3
    const/4 v3, 0x0

    .line 102
    :goto_3
    add-int/2addr v2, v3

    .line 103
    mul-int/lit8 v2, v2, 0x1f

    .line 104
    .line 105
    iget-object v3, p0, Lio/realm/o0;->k:Lio/realm/g0$a;

    .line 106
    .line 107
    if-eqz v3, :cond_4

    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    goto :goto_4

    .line 114
    :cond_4
    const/4 v3, 0x0

    .line 115
    :goto_4
    add-int/2addr v2, v3

    .line 116
    mul-int/lit8 v2, v2, 0x1f

    .line 117
    .line 118
    iget-boolean v3, p0, Lio/realm/o0;->l:Z

    .line 119
    .line 120
    add-int/2addr v2, v3

    .line 121
    mul-int/lit8 v2, v2, 0x1f

    .line 122
    .line 123
    iget-object v3, p0, Lio/realm/o0;->m:Lio/realm/CompactOnLaunchCallback;

    .line 124
    .line 125
    if-eqz v3, :cond_5

    .line 126
    .line 127
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    :cond_5
    add-int/2addr v2, v0

    .line 132
    mul-int/lit8 v2, v2, 0x1f

    .line 133
    .line 134
    iget-boolean v0, p0, Lio/realm/o0;->q:Z

    .line 135
    .line 136
    add-int/2addr v2, v0

    .line 137
    mul-int/lit8 v2, v2, 0x1f

    .line 138
    .line 139
    iget-wide v3, p0, Lio/realm/o0;->n:J

    .line 140
    .line 141
    ushr-long v0, v3, v1

    .line 142
    .line 143
    xor-long/2addr v0, v3

    .line 144
    long-to-int v1, v0

    .line 145
    add-int/2addr v2, v1

    .line 146
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "realmDirectory: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/realm/o0;->a:Ljava/io/File;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nrealmFileName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/realm/o0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ncanonicalPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/realm/o0;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nkey: [length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/realm/o0;->e:[B

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x40

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]\nschemaVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/realm/o0;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmigration: null\ndeleteRealmIfMigrationNeeded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/realm/o0;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\ndurability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/realm/o0;->h:I

    invoke-static {v1}, Landroidx/browser/browseractions/b;->n(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nschemaMediator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/realm/o0;->i:Lio/realm/internal/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nreadOnly: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/realm/o0;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\ncompactOnLaunch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/realm/o0;->m:Lio/realm/CompactOnLaunchCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nmaxNumberOfActiveVersions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/realm/o0;->n:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
