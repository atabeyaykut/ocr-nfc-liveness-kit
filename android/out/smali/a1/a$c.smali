.class public interface abstract La1/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# static fields
.field public static final a:La1/a$c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, La1/a$c$a;

    invoke-direct {v0}, La1/a$c$a;-><init>()V

    sput-object v0, La1/a$c;->a:La1/a$c$a;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Throwable;)V
.end method
