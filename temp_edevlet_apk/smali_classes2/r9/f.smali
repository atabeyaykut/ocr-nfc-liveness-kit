.class public final Lr9/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr9/f$a;
    }
.end annotation


# static fields
.field public static final a:Lr9/f$a;

.field public static b:Lr9/f$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr9/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lr9/f$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    sput-object v0, Lr9/f;->a:Lr9/f$a;

    return-void
.end method
