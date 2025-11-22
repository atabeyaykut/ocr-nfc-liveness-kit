.class public final Lg3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ln3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/a<",
            "Lg3/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ln3/a$f;

    invoke-direct {v0}, Ln3/a$f;-><init>()V

    new-instance v1, Lg3/f;

    invoke-direct {v1}, Lg3/f;-><init>()V

    new-instance v2, Ln3/a;

    const-string v3, "Auth.PROXY_API"

    invoke-direct {v2, v3, v1, v0}, Ln3/a;-><init>(Ljava/lang/String;Ln3/a$a;Ln3/a$f;)V

    sput-object v2, Lg3/b;->a:Ln3/a;

    return-void
.end method
