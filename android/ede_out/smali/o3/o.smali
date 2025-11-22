.class public final Lo3/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e$a;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

.field public final synthetic b:Lo3/q;


# direct methods
.method public constructor <init>(Lo3/q;Lcom/google/android/gms/common/api/internal/a;)V
    .locals 0

    iput-object p1, p0, Lo3/o;->b:Lo3/q;

    iput-object p2, p0, Lo3/o;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lo3/o;->b:Lo3/q;

    .line 2
    .line 3
    iget-object p1, p1, Lo3/q;->a:Ljava/util/Map;

    .line 4
    .line 5
    iget-object v0, p0, Lo3/o;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 6
    .line 7
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method
