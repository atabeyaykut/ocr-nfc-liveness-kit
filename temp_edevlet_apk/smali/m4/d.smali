.class public final Lm4/d;
.super Ln3/c;
.source "SourceFile"


# static fields
.field public static final k:Ln3/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ln3/a$f;

    invoke-direct {v0}, Ln3/a$f;-><init>()V

    new-instance v1, Ln3/a;

    new-instance v2, Lm4/c;

    invoke-direct {v2}, Lm4/c;-><init>()V

    const-string v3, "LocationServices.API"

    invoke-direct {v1, v3, v2, v0}, Ln3/a;-><init>(Ljava/lang/String;Ln3/a$a;Ln3/a$f;)V

    sput-object v1, Lm4/d;->k:Ln3/a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, Ln3/a$c;->c0:Ln3/a$c$c;

    sget-object v1, Ln3/c$a;->c:Ln3/c$a;

    sget-object v2, Lm4/d;->k:Ln3/a;

    invoke-direct {p0, p1, v2, v0, v1}, Ln3/c;-><init>(Landroid/app/Activity;Ln3/a;Ln3/a$c$c;Ln3/c$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Ln3/a$c;->c0:Ln3/a$c$c;

    sget-object v1, Ln3/c$a;->c:Ln3/c$a;

    sget-object v2, Lm4/d;->k:Ln3/a;

    invoke-direct {p0, p1, v2, v0, v1}, Ln3/c;-><init>(Landroid/content/Context;Ln3/a;Ln3/a$c;Ln3/c$a;)V

    return-void
.end method
