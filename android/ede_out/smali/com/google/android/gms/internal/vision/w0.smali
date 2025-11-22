.class public final Lcom/google/android/gms/internal/vision/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/w0$a;
    }
.end annotation


# static fields
.field public static volatile b:Lcom/google/android/gms/internal/vision/w0;

.field public static volatile c:Lcom/google/android/gms/internal/vision/w0;

.field public static final d:Lcom/google/android/gms/internal/vision/w0;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/vision/w0$a;",
            "Lcom/google/android/gms/internal/vision/i1$d<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/vision/w0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/w0;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/vision/w0;->d:Lcom/google/android/gms/internal/vision/w0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/w0;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/w0;->a:Ljava/util/Map;

    return-void
.end method

.method public static b()Lcom/google/android/gms/internal/vision/w0;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/vision/w0;->b:Lcom/google/android/gms/internal/vision/w0;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/vision/w0;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/vision/w0;->b:Lcom/google/android/gms/internal/vision/w0;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/vision/w0;->d:Lcom/google/android/gms/internal/vision/w0;

    sput-object v0, Lcom/google/android/gms/internal/vision/w0;->b:Lcom/google/android/gms/internal/vision/w0;

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
.method public final a(ILcom/google/android/gms/internal/vision/n2;)Lcom/google/android/gms/internal/vision/i1$d;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/vision/w0$a;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/vision/w0$a;-><init>(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/vision/w0;->a:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/vision/i1$d;

    return-object p1
.end method
