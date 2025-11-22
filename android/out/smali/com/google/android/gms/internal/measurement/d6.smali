.class public final Lcom/google/android/gms/internal/measurement/d6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile b:Lcom/google/android/gms/internal/measurement/d6;

.field public static volatile c:Lcom/google/android/gms/internal/measurement/d6;

.field public static final d:Lcom/google/android/gms/internal/measurement/d6;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/measurement/c6;",
            "Lcom/google/android/gms/internal/measurement/p6<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/d6;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/d6;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/d6;->d:Lcom/google/android/gms/internal/measurement/d6;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/d6;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/d6;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/measurement/d6;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/d6;->b:Lcom/google/android/gms/internal/measurement/d6;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/measurement/d6;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/d6;->b:Lcom/google/android/gms/internal/measurement/d6;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/d6;->d:Lcom/google/android/gms/internal/measurement/d6;

    sput-object v0, Lcom/google/android/gms/internal/measurement/d6;->b:Lcom/google/android/gms/internal/measurement/d6;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/measurement/s7;I)Lcom/google/android/gms/internal/measurement/p6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/android/gms/internal/measurement/s7;",
            ">(TContainingType;I)",
            "Lcom/google/android/gms/internal/measurement/p6<",
            "TContainingType;*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/c6;

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/measurement/c6;-><init>(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/d6;->a:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/p6;

    return-object p1
.end method
