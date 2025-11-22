.class public final Lm4/j;
.super Lm4/j0;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lh5/l;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Lh5/l;)V
    .locals 0

    iput-object p1, p0, Lm4/j;->a:Ljava/lang/Object;

    iput-object p2, p0, Lm4/j;->b:Lh5/l;

    invoke-direct {p0}, Lm4/j0;-><init>()V

    return-void
.end method


# virtual methods
.method public final N(Lm4/g0;)V
    .locals 2

    .line 1
    iget-object p1, p1, Lm4/g0;->a:Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    iget-object v0, p0, Lm4/j;->a:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, Lm4/j;->b:Lh5/l;

    .line 6
    .line 7
    invoke-static {p1, v0, v1}, Lo3/n;->a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lh5/l;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method
