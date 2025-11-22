.class public final Lg3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg3/a$a;
    }
.end annotation


# static fields
.field public static final a:Ln3/a;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/a<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ln3/a$f;

    invoke-direct {v0}, Ln3/a$f;-><init>()V

    new-instance v1, Lg3/d;

    invoke-direct {v1}, Lg3/d;-><init>()V

    new-instance v1, Lg3/e;

    invoke-direct {v1}, Lg3/e;-><init>()V

    sget-object v2, Lg3/b;->a:Ln3/a;

    new-instance v2, Ln3/a;

    const-string v3, "Auth.GOOGLE_SIGN_IN_API"

    invoke-direct {v2, v3, v1, v0}, Ln3/a;-><init>(Ljava/lang/String;Ln3/a$a;Ln3/a$f;)V

    sput-object v2, Lg3/a;->a:Ln3/a;

    return-void
.end method
