.class public final Ly4/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static b:Ly4/l;


# direct methods
.method public static a(Landroid/app/Activity;)Ly4/l;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lm3/g;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "null"

    .line 5
    .line 6
    const-string v1, "preferredRenderer: "

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "j"

    .line 13
    .line 14
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    sget-object v0, Ly4/j;->b:Ly4/l;

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    sget v0, Lm3/i;->e:I

    .line 22
    .line 23
    const v0, 0xcc77c0

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p0}, Lm3/j;->b(ILandroid/content/Context;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-static {p0, v0}, Ly4/j;->c(Landroid/app/Activity;Lx4/d$a;)Ly4/l;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    sput-object v2, Ly4/j;->b:Ly4/l;

    .line 38
    .line 39
    :try_start_0
    invoke-interface {v2}, Ly4/l;->d()I

    .line 40
    .line 41
    .line 42
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    .line 43
    const/4 v3, 0x2

    .line 44
    if-ne v2, v3, :cond_0

    .line 45
    .line 46
    :try_start_1
    sget-object v2, Ly4/j;->b:Ly4/l;

    .line 47
    .line 48
    invoke-static {p0, v0}, Ly4/j;->b(Landroid/app/Activity;Lx4/d$a;)Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    new-instance v4, Lz3/d;

    .line 53
    .line 54
    invoke-direct {v4, v3}, Lz3/d;-><init>(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v2, v4}, Ly4/l;->P(Lz3/d;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception p0

    .line 62
    new-instance v0, Lz4/g;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Lz4/g;-><init>(Landroid/os/RemoteException;)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :catch_1
    const-string v2, "Caught UnsatisfiedLinkError attempting to load the LATEST renderer\'s native library. Attempting to use the LEGACY renderer instead."

    .line 69
    .line 70
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    sput-object v0, Ly4/j;->a:Landroid/content/Context;

    .line 74
    .line 75
    sget-object v1, Lx4/d$a;->a:Lx4/d$a;

    .line 76
    .line 77
    invoke-static {p0, v1}, Ly4/j;->c(Landroid/app/Activity;Lx4/d$a;)Ly4/l;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    sput-object v1, Ly4/j;->b:Ly4/l;

    .line 82
    .line 83
    :cond_0
    :goto_0
    :try_start_2
    sget-object v1, Ly4/j;->b:Ly4/l;

    .line 84
    .line 85
    invoke-static {p0, v0}, Ly4/j;->b(Landroid/app/Activity;Lx4/d$a;)Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    new-instance v0, Lz3/d;

    .line 97
    .line 98
    invoke-direct {v0, p0}, Lz3/d;-><init>(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-interface {v1, v0}, Ly4/l;->D(Lz3/d;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 102
    .line 103
    .line 104
    sget-object p0, Ly4/j;->b:Ly4/l;

    .line 105
    .line 106
    return-object p0

    .line 107
    :catch_2
    move-exception p0

    .line 108
    new-instance v0, Lz4/g;

    .line 109
    .line 110
    invoke-direct {v0, p0}, Lz4/g;-><init>(Landroid/os/RemoteException;)V

    .line 111
    .line 112
    .line 113
    throw v0

    .line 114
    :catch_3
    move-exception p0

    .line 115
    new-instance v0, Lz4/g;

    .line 116
    .line 117
    invoke-direct {v0, p0}, Lz4/g;-><init>(Landroid/os/RemoteException;)V

    .line 118
    .line 119
    .line 120
    throw v0

    .line 121
    :cond_1
    new-instance p0, Lm3/g;

    .line 122
    .line 123
    invoke-direct {p0, v0}, Lm3/g;-><init>(I)V

    .line 124
    .line 125
    .line 126
    throw p0

    .line 127
    :cond_2
    return-object v0
.end method

.method public static b(Landroid/app/Activity;Lx4/d$a;)Landroid/content/Context;
    .locals 7
    .param p1    # Lx4/d$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Ly4/j;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    sget-object v0, Lx4/d$a;->a:Lx4/d$a;

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    const-string p1, "com.google.android.gms.maps_legacy_dynamite"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p1, "com.google.android.gms.maps_core_dynamite"

    .line 13
    .line 14
    :goto_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->b:Lcom/google/android/gms/dynamite/b;

    .line 15
    .line 16
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/dynamite/DynamiteModule;->c(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object p0, v0, Lcom/google/android/gms/dynamite/DynamiteModule;->a:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v1, "com.google.android.gms.maps_dynamite"

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x3

    .line 32
    const-string v4, "com.google.android.gms"

    .line 33
    .line 34
    const-string v5, "Failed to load maps module, use pre-Chimera"

    .line 35
    .line 36
    const-string v6, "j"

    .line 37
    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    :try_start_1
    const-string p1, "Attempting to load maps_dynamite again."

    .line 41
    .line 42
    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    sget-object p1, Lcom/google/android/gms/dynamite/DynamiteModule;->b:Lcom/google/android/gms/dynamite/b;

    .line 46
    .line 47
    invoke-static {p0, p1, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->c(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object p0, p1, Lcom/google/android/gms/dynamite/DynamiteModule;->a:Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :catch_1
    move-exception p1

    .line 55
    invoke-static {v6, v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .line 57
    .line 58
    sget p1, Lm3/i;->e:I

    .line 59
    .line 60
    :goto_1
    :try_start_2
    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object p0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 64
    goto :goto_2

    .line 65
    :catch_2
    move-object p0, v2

    .line 66
    goto :goto_2

    .line 67
    :cond_1
    invoke-static {v6, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .line 69
    .line 70
    sget p1, Lm3/i;->e:I

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :goto_2
    sput-object p0, Ly4/j;->a:Landroid/content/Context;

    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_2
    return-object v0
.end method

.method public static c(Landroid/app/Activity;Lx4/d$a;)Ly4/l;
    .locals 2
    .param p1    # Lx4/d$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "j"

    .line 2
    .line 3
    const-string v1, "Making Creator dynamically"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Ly4/j;->b(Landroid/app/Activity;Lx4/d$a;)Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string p1, "com.google.android.gms.maps.internal.CreatorImpl"

    .line 17
    .line 18
    :try_start_0
    invoke-static {p0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 25
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 29
    check-cast p0, Landroid/os/IBinder;

    .line 30
    .line 31
    if-nez p0, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string p1, "com.google.android.gms.maps.internal.ICreator"

    .line 36
    .line 37
    invoke-interface {p0, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    instance-of v0, p1, Ly4/l;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    move-object p0, p1

    .line 46
    check-cast p0, Ly4/l;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance p1, Ly4/k;

    .line 50
    .line 51
    invoke-direct {p1, p0}, Ly4/k;-><init>(Landroid/os/IBinder;)V

    .line 52
    .line 53
    .line 54
    move-object p0, p1

    .line 55
    :goto_0
    return-object p0

    .line 56
    :catch_0
    move-exception p1

    .line 57
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const-string v1, "Unable to call the default constructor of "

    .line 64
    .line 65
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :catch_1
    move-exception p1

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string v1, "Unable to instantiate the dynamic class "

    .line 81
    .line 82
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    throw v0
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 90
    :catch_2
    move-exception p0

    .line 91
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 92
    .line 93
    const-string v0, "Unable to find dynamic class com.google.android.gms.maps.internal.CreatorImpl"

    .line 94
    .line 95
    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    throw p1
.end method
