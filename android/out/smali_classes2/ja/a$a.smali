.class public final Lja/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lja/a$a;

.field public static final b:Ll9/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/e<",
            "Lja/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lja/a$a;

    invoke-direct {v0}, Lja/a$a;-><init>()V

    sput-object v0, Lja/a$a;->a:Lja/a$a;

    const/4 v0, 0x2

    sget-object v1, Lja/a$a$a;->a:Lja/a$a$a;

    invoke-static {v0, v1}, Lc5/y;->v(ILx9/a;)Ll9/e;

    move-result-object v0

    sput-object v0, Lja/a$a;->b:Ll9/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
