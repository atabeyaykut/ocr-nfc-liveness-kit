.class public final Lhd/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd/c;


# instance fields
.field public a:Ljava/util/HashMap;

.field public b:Lhd/a;

.field public c:Lhd/c;

.field public d:Lhd/a;

.field public final e:Lhd/a;

.field public final f:Ljava/lang/String;

.field public final g:Landroid/content/Context;

.field public final h:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    new-instance v0, Lhd/a;

    .line 2
    .line 3
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, v4}, Lhd/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, Lhd/f;->f:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lhd/f;->h:Ljava/util/concurrent/locks/ReentrantLock;

    .line 26
    .line 27
    iput-object v0, p0, Lhd/f;->e:Lhd/a;

    .line 28
    .line 29
    const-string v1, "https://s3.amazonaws.com/android-beacon-library/android-distance.json"

    .line 30
    .line 31
    iput-object v1, p0, Lhd/f;->f:Ljava/lang/String;

    .line 32
    .line 33
    iput-object p1, p0, Lhd/f;->g:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {p0}, Lhd/f;->f()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/4 v3, 0x0

    .line 40
    const-string v4, "ModelSpecificDistanceCalculator"

    .line 41
    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    const-string v5, "android.permission.INTERNET"

    .line 45
    .line 46
    invoke-virtual {p1, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_0

    .line 51
    .line 52
    const-string p1, "App has no android.permission.INTERNET permission.  Cannot check for distance model updates"

    .line 53
    .line 54
    new-array v1, v3, [Ljava/lang/Object;

    .line 55
    .line 56
    invoke-static {v4, p1, v1}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    new-instance v5, Lhd/g;

    .line 61
    .line 62
    new-instance v6, Lhd/e;

    .line 63
    .line 64
    invoke-direct {v6, p0}, Lhd/e;-><init>(Lhd/f;)V

    .line 65
    .line 66
    .line 67
    invoke-direct {v5, p1, v1, v6}, Lhd/g;-><init>(Landroid/content/Context;Ljava/lang/String;Lhd/e;)V

    .line 68
    .line 69
    .line 70
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 71
    .line 72
    new-array v1, v3, [Ljava/lang/Void;

    .line 73
    .line 74
    invoke-virtual {v5, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 75
    .line 76
    .line 77
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 78
    .line 79
    :try_start_0
    invoke-static {}, Lhd/f;->g()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p0, p1}, Lhd/f;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catch_0
    move-exception p1

    .line 88
    new-instance v1, Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v1, p0, Lhd/f;->a:Ljava/util/HashMap;

    .line 94
    .line 95
    new-array v1, v3, [Ljava/lang/Object;

    .line 96
    .line 97
    const-string v2, "Cannot build model distance calculations"

    .line 98
    .line 99
    invoke-static {p1, v4, v2, v1}, Lid/b;->b(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    :goto_1
    iget-object p1, p0, Lhd/f;->e:Lhd/a;

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Lhd/f;->e(Lhd/a;)Lhd/c;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iput-object p1, p0, Lhd/f;->c:Lhd/c;

    .line 109
    .line 110
    invoke-virtual {p0, v0}, Lhd/f;->e(Lhd/a;)Lhd/c;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iput-object p1, p0, Lhd/f;->c:Lhd/c;

    .line 115
    .line 116
    return-void
.end method

.method public static b(Lhd/f;Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "ModelSpecificDistanceCalculator"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    iget-object p0, p0, Lhd/f;->g:Landroid/content/Context;

    .line 9
    .line 10
    const-string v3, "model-distance-calculations.json"

    .line 11
    .line 12
    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 27
    .line 28
    .line 29
    :catch_0
    const-string p0, "Successfully saved new distance model file"

    .line 30
    .line 31
    new-array p1, v1, [Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {v0, p0, p1}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :catch_1
    move-exception p0

    .line 39
    :try_start_2
    const-string p1, "Cannot write updated distance model to local storage"

    .line 40
    .line 41
    new-array v3, v1, [Ljava/lang/Object;

    .line 42
    .line 43
    invoke-static {p0, v0, p1, v3}, Lid/b;->e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    .line 45
    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 49
    .line 50
    .line 51
    :catch_2
    :cond_0
    :goto_0
    return v1

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 56
    .line 57
    .line 58
    :catch_3
    :cond_1
    throw p0
.end method

.method public static g()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "/model-distance-calculations.json"

    const-class v1, Lhd/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v4, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v4, :cond_2

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v1, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_1
    move-exception v1

    move-object v3, v0

    goto :goto_3

    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot load resource at model-distance-calculations.json"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    move-object v1, v0

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v4, v3

    :goto_3
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_4
    throw v1
.end method


# virtual methods
.method public final a(ID)D
    .locals 1

    iget-object v0, p0, Lhd/f;->c:Lhd/c;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "ModelSpecificDistanceCalculator"

    const-string p3, "distance calculator has not been set"

    invoke-static {p2, p3, p1}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    return-wide p1

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lhd/c;->a(ID)D

    move-result-wide p1

    return-wide p1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "models"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "default"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    const-string v7, "coefficient1"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const-string v8, "coefficient2"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const-string v9, "coefficient3"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const-string v10, "version"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "build_number"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "model"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "manufacturer"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v14, Lhd/b;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    move-object v13, v14

    move-object v9, v14

    move-wide v14, v15

    move-wide/from16 v16, v7

    invoke-direct/range {v13 .. v19}, Lhd/b;-><init>(DDD)V

    new-instance v7, Lhd/a;

    invoke-direct {v7, v10, v11, v12, v5}, Lhd/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_1

    iput-object v7, v0, Lhd/f;->b:Lhd/a;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iput-object v1, v0, Lhd/f;->a:Ljava/util/HashMap;

    return-void
.end method

.method public final d(Lhd/a;)Lhd/c;
    .locals 12

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v2, p1, Lhd/a;->a:Ljava/lang/String;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 8
    .line 9
    iget-object v2, p1, Lhd/a;->b:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    aput-object v2, v1, v4

    .line 13
    .line 14
    iget-object v2, p1, Lhd/a;->c:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    aput-object v2, v1, v5

    .line 18
    .line 19
    iget-object v2, p1, Lhd/a;->d:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v6, 0x3

    .line 22
    aput-object v2, v1, v6

    .line 23
    .line 24
    const-string v2, "ModelSpecificDistanceCalculator"

    .line 25
    .line 26
    const-string v7, "Finding best distance calculator for %s, %s, %s, %s"

    .line 27
    .line 28
    invoke-static {v2, v7, v1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lhd/f;->a:Ljava/util/HashMap;

    .line 32
    .line 33
    const/4 v8, 0x0

    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    const-string p1, "Cannot get distance calculator because modelMap was never initialized"

    .line 37
    .line 38
    new-array v0, v3, [Ljava/lang/Object;

    .line 39
    .line 40
    invoke-static {v2, p1, v0}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-object v8

    .line 44
    :cond_0
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const/4 v9, 0x0

    .line 53
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    if-eqz v10, :cond_2

    .line 58
    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    check-cast v10, Lhd/a;

    .line 64
    .line 65
    invoke-virtual {v10, p1}, Lhd/a;->a(Lhd/a;)I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    if-le v11, v9, :cond_1

    .line 70
    .line 71
    invoke-virtual {v10, p1}, Lhd/a;->a(Lhd/a;)I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    move-object v8, v10

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    if-eqz v8, :cond_3

    .line 78
    .line 79
    new-array p1, v4, [Ljava/lang/Object;

    .line 80
    .line 81
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    aput-object v1, p1, v3

    .line 86
    .line 87
    const-string v1, "found a match with score %s"

    .line 88
    .line 89
    invoke-static {v2, v1, p1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    new-array p1, v0, [Ljava/lang/Object;

    .line 93
    .line 94
    iget-object v0, v8, Lhd/a;->a:Ljava/lang/String;

    .line 95
    .line 96
    aput-object v0, p1, v3

    .line 97
    .line 98
    iget-object v0, v8, Lhd/a;->b:Ljava/lang/String;

    .line 99
    .line 100
    aput-object v0, p1, v4

    .line 101
    .line 102
    iget-object v0, v8, Lhd/a;->c:Ljava/lang/String;

    .line 103
    .line 104
    aput-object v0, p1, v5

    .line 105
    .line 106
    iget-object v0, v8, Lhd/a;->d:Ljava/lang/String;

    .line 107
    .line 108
    aput-object v0, p1, v6

    .line 109
    .line 110
    invoke-static {v2, v7, p1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iput-object v8, p0, Lhd/f;->d:Lhd/a;

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    iget-object p1, p0, Lhd/f;->b:Lhd/a;

    .line 117
    .line 118
    iput-object p1, p0, Lhd/f;->d:Lhd/a;

    .line 119
    .line 120
    const-string p1, "Cannot find match for this device.  Using default"

    .line 121
    .line 122
    new-array v0, v3, [Ljava/lang/Object;

    .line 123
    .line 124
    invoke-static {v2, p1, v0}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :goto_1
    iget-object p1, p0, Lhd/f;->a:Ljava/util/HashMap;

    .line 128
    .line 129
    iget-object v0, p0, Lhd/f;->d:Lhd/a;

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    check-cast p1, Lhd/c;

    .line 136
    .line 137
    return-object p1
.end method

.method public final e(Lhd/a;)Lhd/c;
    .locals 1

    iget-object v0, p0, Lhd/f;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p0, p1}, Lhd/f;->d(Lhd/a;)Lhd/c;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final f()Z
    .locals 9

    .line 1
    const-string v0, "ModelSpecificDistanceCalculator"

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    iget-object v2, p0, Lhd/f;->g:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "model-distance-calculations.json"

    .line 12
    .line 13
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    .line 25
    .line 26
    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 27
    .line 28
    .line 29
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    .line 30
    .line 31
    new-instance v8, Ljava/io/InputStreamReader;

    .line 32
    .line 33
    invoke-direct {v8, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 37
    .line 38
    .line 39
    :goto_0
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    if-eqz v5, :cond_0

    .line 44
    .line 45
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v5, "\n"

    .line 49
    .line 50
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 55
    .line 56
    .line 57
    :catch_0
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 58
    .line 59
    .line 60
    :catch_1
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v5, p0, Lhd/f;->h:Ljava/util/concurrent/locks/ReentrantLock;

    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    .line 67
    .line 68
    .line 69
    :try_start_6
    invoke-virtual {p0, v1}, Lhd/f;->c(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 70
    .line 71
    .line 72
    :try_start_7
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 73
    .line 74
    .line 75
    return v3

    .line 76
    :catchall_0
    move-exception v1

    .line 77
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 78
    .line 79
    .line 80
    throw v1
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2

    .line 81
    :catch_2
    move-exception v1

    .line 82
    const/4 v5, 0x2

    .line 83
    new-array v5, v5, [Ljava/lang/Object;

    .line 84
    .line 85
    iget-object v6, p0, Lhd/f;->f:Ljava/lang/String;

    .line 86
    .line 87
    aput-object v6, v5, v4

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    aput-object v2, v5, v3

    .line 94
    .line 95
    const-string v2, "Cannot update distance models from online database at %s with JSON: %s"

    .line 96
    .line 97
    invoke-static {v1, v0, v2, v5}, Lid/b;->b(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    return v4

    .line 101
    :catchall_1
    move-exception v0

    .line 102
    move-object v5, v7

    .line 103
    goto :goto_3

    .line 104
    :catch_3
    move-exception v2

    .line 105
    move-object v5, v7

    .line 106
    goto :goto_1

    .line 107
    :catch_4
    nop

    .line 108
    move-object v5, v7

    .line 109
    goto :goto_5

    .line 110
    :catch_5
    move-exception v2

    .line 111
    goto :goto_1

    .line 112
    :catch_6
    nop

    .line 113
    goto :goto_5

    .line 114
    :catchall_2
    move-exception v0

    .line 115
    move-object v6, v5

    .line 116
    goto :goto_3

    .line 117
    :catch_7
    move-exception v2

    .line 118
    move-object v6, v5

    .line 119
    :goto_1
    :try_start_8
    const-string v7, "Cannot open distance model file %s"

    .line 120
    .line 121
    new-array v3, v3, [Ljava/lang/Object;

    .line 122
    .line 123
    aput-object v1, v3, v4

    .line 124
    .line 125
    invoke-static {v2, v0, v7, v3}, Lid/b;->b(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 126
    .line 127
    .line 128
    if-eqz v5, :cond_1

    .line 129
    .line 130
    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :catch_8
    nop

    .line 135
    :cond_1
    :goto_2
    if-eqz v6, :cond_2

    .line 136
    .line 137
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 138
    .line 139
    .line 140
    :catch_9
    :cond_2
    return v4

    .line 141
    :catchall_3
    move-exception v0

    .line 142
    :goto_3
    if-eqz v5, :cond_3

    .line 143
    .line 144
    :try_start_b
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :catch_a
    nop

    .line 149
    :cond_3
    :goto_4
    if-eqz v6, :cond_4

    .line 150
    .line 151
    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    .line 152
    .line 153
    .line 154
    :catch_b
    :cond_4
    throw v0

    .line 155
    :catch_c
    nop

    .line 156
    move-object v6, v5

    .line 157
    :goto_5
    if-eqz v5, :cond_5

    .line 158
    .line 159
    :try_start_d
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    .line 160
    .line 161
    .line 162
    goto :goto_6

    .line 163
    :catch_d
    nop

    .line 164
    :cond_5
    :goto_6
    if-eqz v6, :cond_6

    .line 165
    .line 166
    :try_start_e
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    .line 167
    .line 168
    .line 169
    :catch_e
    :cond_6
    return v4
.end method
