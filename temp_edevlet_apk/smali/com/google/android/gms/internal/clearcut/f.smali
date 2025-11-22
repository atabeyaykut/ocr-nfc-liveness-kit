.class public final synthetic Lcom/google/android/gms/internal/clearcut/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/clearcut/k;
.implements Lcom/google/android/gms/internal/measurement/d0;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/b1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/f;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/clearcut/f;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/f;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/clearcut/f;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/s3;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/f;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/s3;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/s3;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/f;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/s3;->e(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/p;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, v0, Lcom/google/android/gms/internal/measurement/s3;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Ljava/util/Map;

    .line 19
    .line 20
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public final g()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/f;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/clearcut/e;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/f;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/google/android/gms/internal/clearcut/b;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v2, "gms:phenotype:phenotype_flag:debug_disable_caching"

    .line 13
    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/e;->g()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    new-instance v3, Lcom/google/android/gms/internal/clearcut/g;

    .line 21
    .line 22
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/clearcut/g;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v3}, Lcom/google/android/gms/internal/clearcut/e;->c(Lcom/google/android/gms/internal/clearcut/k;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v2, 0x0

    .line 37
    :goto_0
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/b;->b()Ljava/util/HashMap;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget-object v2, v1, Lcom/google/android/gms/internal/clearcut/b;->e:Ljava/util/HashMap;

    .line 45
    .line 46
    :goto_1
    if-nez v2, :cond_3

    .line 47
    .line 48
    iget-object v3, v1, Lcom/google/android/gms/internal/clearcut/b;->d:Ljava/lang/Object;

    .line 49
    .line 50
    monitor-enter v3

    .line 51
    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/internal/clearcut/b;->e:Ljava/util/HashMap;

    .line 52
    .line 53
    if-nez v2, :cond_2

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/b;->b()Ljava/util/HashMap;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iput-object v2, v1, Lcom/google/android/gms/internal/clearcut/b;->e:Ljava/util/HashMap;

    .line 60
    .line 61
    :cond_2
    monitor-exit v3

    .line 62
    goto :goto_2

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw v0

    .line 66
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    :goto_3
    iget-object v0, v0, Lcom/google/android/gms/internal/clearcut/e;->b:Ljava/lang/String;

    .line 74
    .line 75
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Ljava/lang/String;

    .line 80
    .line 81
    return-object v0
.end method
