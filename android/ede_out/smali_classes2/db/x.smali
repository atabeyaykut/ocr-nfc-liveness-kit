.class public final Ldb/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldb/x$a;
    }
.end annotation


# static fields
.field public static final a:Ldb/f;

.field public static final b:Ldb/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ldb/f;

    sget-object v1, Lva/x;->p:Llb/c;

    const-string v2, "ENHANCED_NULLABILITY_ANNOTATION"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ldb/f;-><init>(Llb/c;)V

    sput-object v0, Ldb/x;->a:Ldb/f;

    new-instance v0, Ldb/f;

    sget-object v1, Lva/x;->q:Llb/c;

    const-string v2, "ENHANCED_MUTABILITY_ANNOTATION"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ldb/f;-><init>(Llb/c;)V

    sput-object v0, Ldb/x;->b:Ldb/f;

    return-void
.end method
